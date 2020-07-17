#!/usr/bin/env python

import argparse
import sys
import os
import glob
import fnmatch
from pathlib import Path

# from typing import List, Dict, Tuple, cast, Any


# Code copied from https://github.com/RTimothyEdwards/open_pdks
# added a sourcelibdir parameter


def create_lef_library(
    sourcelibdir, destlibdir, destlib, do_compile_only, excludelist
):

    alllibname = destlibdir + "/" + destlib + ".lef"
    if os.path.isfile(alllibname):
        os.remove(alllibname)

    print("Diagnostic:  Creating consolidated LEF library " + destlib + ".lef")
    # llist = glob.glob(sourcelibdir + "/**.lef")
    llist = [str(f) for f in Path(sourcelibdir).rglob("*.lef")]

    print(f"-D- {sourcelibdir} -> {llist}")
    if alllibname in llist:
        llist.remove(alllibname)

    # Create exclude list with glob-style matching using fnmatch
    if len(llist) > 0:
        llistnames = list(os.path.split(item)[1] for item in llist)
        notllist = []
        for exclude in excludelist:
            notllist.extend(fnmatch.filter(llistnames, exclude))

        # Apply exclude list
        if len(notllist) > 0:
            for file in llist[:]:
                if os.path.split(file)[1] in notllist:
                    llist.remove(file)

    if len(llist) > 1:
        print("New file is:  " + alllibname)
        with open(alllibname, "w") as ofile:
            headerdone = False
            for lfile in llist:
                with open(lfile, "r") as ifile:
                    # print('Adding ' + lfile + ' to library.')
                    ltext = ifile.read()
                    llines = ltext.splitlines()
                    headerseen = False
                    for lline in llines:
                        if headerdone:
                            if not headerseen:
                                if not lline.startswith("MACRO"):
                                    continue
                                else:
                                    headerseen = True
                        print(lline, file=ofile)
                    headerdone = True
                print("#--------EOF---------\n", file=ofile)

        if do_compile_only:
            print("Compile-only:  Removing individual LEF files")
            for lfile in llist:
                if os.path.isfile(lfile):
                    os.remove(lfile)
            # if newname:
            #    if os.path.isfile(newname):
            #        os.remove(newname)
    else:
        print("Only one file (" + str(llist) + ');  ignoring "compile" option.')


def get_args() -> argparse.Namespace:
    """
    Get command line arguments
    """
    parser = argparse.ArgumentParser(
        description="""
Read a libspec Python file, generate a file suitable
to be use by a CAD tool to load the correct library

    """
    )

    # parser.add_argument(
    #    dest="tests", metavar="tests", nargs="*", help="Path(es) to the test"
    # )

    # parser.add_argument("libspec", help="Library cell spec file ")

    parser.add_argument(
        "--sourcedir",
        action="store",
        help="Top directory for the single lef files)",
        default=".",
    )

    parser.add_argument(
        "--destdir",
        action="store",
        help="Output directory for the lef file ",
        default=".",
    )

    parser.add_argument(
        "--libname", action="store", help="Name of the library", default=".",
    )

    parser.add_argument(
        "--do_compile_only",
        action="store_true",
        help="Turn on compile only version",
        default=False,
    )
    parser.add_argument(
        "-v",
        "--verbosity",
        action="count",
        help="Increase output verbosity",
        default=0,
    )
    parser.add_argument("--version", action="version", version="0.1")

    return parser.parse_args()


if __name__ == "__main__":
    cmdline = " ".join(sys.argv)
    args = get_args()

    create_lef_library(
        sourcelibdir=args.sourcedir,
        destlibdir=args.destdir,
        destlib=args.libname,
        do_compile_only=args.do_compile_only,
        excludelist=[],
    )
# Local Variables:
# eval: (blacken-mode)
# End:
