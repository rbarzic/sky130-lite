





LIBS=sky130_fd_sc_hdll

define create_lib
	rm -Rf $(1)
	git clone --depth=1 --branch=master https://foss-eda-tools.googlesource.com/skywater-pdk/libs/$(1)
endef

define clean_lib
	rm -Rf $(1)/.git
	find $(1) -name "*.lib.json" | xargs rm -f
	find $(1) -name "*.svg" | xargs gzip -9
endef




create:	
	$(foreach LIB,$(LIBS), $(call create_lib,$(LIB)); )


cleanup:
	$(foreach LIB,$(LIBS), $(call clean_lib,$(LIB)); )	
