#Makefile for CPP projects

newcpp:
	@mkdir -p $(OUTPATH)/cppex/es
	@mkdir -p $(ETMP)
	@cp -r $(ECPP) $(EMK) $(ETMP)
	@cp -r $(ETMP) $(OUTPATH)/cppex/es
	@rm -rf $(ETMP)

# newcpp:
# 	ind=1 ; while [[ $$ind -le 255 ]] ; do \
# 		[ if ! -d (OUTPATH)/cppex/es$$ind ]; then \
# 			mkdir -p $(OUTPATH)/cppex/es$$ind; \
# 			mkdir -p $(EMACSTEMP); \
# 			cp -r $(EMACSCPP)/newcpp/* $(EMACSMAKE) $(EMACSTEMP); \
# 			cp -r --backup=t $ $(EMACSTEMP) $(OUTPATH)/cppex/es$$ind; \
# 			rm -r $(EMACSTEMP); \
# 			((ind = 254)); \
# 		fi; \
# 		((ind = ind + 1)) ; \
# 	done

