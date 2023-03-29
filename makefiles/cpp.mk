#Makefile for CPP projects

name = "cpp/es"

cppnew:
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

$(ODIR)/%.o:
	@%.$(EXT)
	@rmdir -r $(ODIR)
	@mkdir -p $(ODIR)
	@$(COMP) -c -o $@ $< $(FLAGS)
# 	"-c" to compile
#	"-o" to rename outupt
# 	"$@" is target
#	"$<" is prerequisite

cppbuild:
	@$(COMP) $(NAM).$(EXT) -o $(APP) $(LIBS)

# all:
# 	@$(OBJS)
# 	@mkdir -p objs
# 	@$(COMP) -o $(APP) $(OBJS) $(FLAGS) $(LIBS)
# # 	"all" is called even without target
# #	used to make the executable file (APP)
