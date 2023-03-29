#Makefile for CPP projects

name = "cpp/es"

newcpp:
	@mkdir -p $(OUTPATH)/$(name)
#	@cp -r $(ECPP) $(EMK) $(OUTPATH)/$(name)
	@cp -r $(ECPP) $(EMK) $(OUTPATH)/$(name)
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

