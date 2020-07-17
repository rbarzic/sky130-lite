PROJECT=sky130-lite
SHELL := /bin/bash

mkvenv:
	. `which virtualenvwrapper.sh` && mkvirtualenv -p python3 $(PROJECT) && workon $(PROJECT)

freeze:
	pip freeze > requirements.txt

install_env:
	pip install -r requirements.txt







LIBS=sky130_fd_sc_hdll


CORNERS=tt_025C_1v80 ff_n40C_1v95 ss_100C_1v60

define create_lib
	rm -Rf $(1)
	git clone --depth=1 --branch=master https://foss-eda-tools.googlesource.com/skywater-pdk/libs/$(1)
endef

define create_timing
	./scripts/./create_timing.py $(1) $(CORNERS)
endef

define create_lef
	mkdir -p $(1)/lef
	./scripts/merge_lef.py --sourcedir $(1)/cells  --destdir ./$(1)/lef --libname $(1)
endef

define clean_lib
	rm -Rf $(1)/.git
	rm -Rf $(1)/.gitignore
	find $(1) -name "*.lib.json" | xargs rm -f
	find $(1) -name "*.svg" | xargs rm -f
endef




create:	
	$(foreach LIB,$(LIBS), $(call create_lib,$(LIB)); )

timing:
	$(foreach LIB,$(LIBS), $(call create_timing,$(LIB)); )

lef:
	$(foreach LIB,$(LIBS), $(call create_lef,$(LIB)); )	
cleanup:
	$(foreach LIB,$(LIBS), $(call clean_lib,$(LIB)); )	
