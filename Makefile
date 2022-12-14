#	MAKEFILE

#	--- DIRECTIVES

OUTPATH = ~/Desktop
INPATH = ./

EDTRPTH = $(EMACSALL)

EMACSCOREPATH = $(EMACSINIT) $(EMACSCUST) $(EMACSMAKE) $(EMACSCPP) $(GIT) $(GITIGN)
EMACSCORE = $(INIT) $(CUST) $(MAKEF) $(CPPF) $(GIT) $(GITIGN)

INIT = init.el
CUST = custom
MAKEF = Makefile
CPPF = cppf
TEMP = temp
GIT = .git
GITIGN = .gitignore


EMACSINIT =  $(EMACS)/$(INIT)
EMACSCUST = $(EMACS)/$(CUST)
EMACSMAKE =  $(EMACS)/$(MAKEF)
EMACSCPP = $(EMACS)/$(CPPF)
EMACSTEMP = $(EMACS)/$(TEMP)
EMACSGITIGN = $(EMACS)/$(GITIGN)

EMACS = ~/.emacs.d

NAM = main
#	file name

EXT = cpp
#	file extension

COMP = g++
#	compiler

SRC = $(NAM).$(EXT)
#	source file, with [space] in between two of them

APP = $(NAM).exe
#	executable file

ODIR = $(NAM)_objs
# object directory

FLAGS =
#	other libraries

OBJS = $(patsubst %.$(EXT), $(ODIR)/%.o, $(SRC))
#	"pathsub" substitute arg 2 to arg 1 in arg 3
#	save file as objects (.o) to keep track of which are modified
#	recompile only modified objects


LIBS = -lncurses
# ---

# --- COMMANDS
# target: prerequisites
#		commandline

$(ODIR)/%.o: %.$(EXT)
	@rmdir -r $(ODIR)
	@mkdir -p $(ODIR)
	@$(COMP) -c -o $@ $< $(FLAGS)
# "-c" to compile
#	"-o" to rename outupt
# "$@"	is target
#	"$<" is prerequisite

all: $(OBJS)
# @if [ ! -d "./objs" ]; then \
#	 mkdir objs; \
# fi
	@$(COMP) -o $(APP) $(OBJS) $(LIBS)
# "all" is called even without target
#	used to make the executable file (APP)

.PHONY: run clear
# ".PHONY" to avoid generating  prerequisite files

run: all
	./$(APP)
# execute "all" and launch (APP)

clean:
	rm -f $(ODIR)/*.o
# "rm" removes
# "-f forces the action
# used to remove the objects in (ODIR)

focus: all
	@clear
	@printf "\n   .....running [$(APP)].....\n\n"
	@./$(APP)
	@printf "\n   .....[$(APP)] ended.....\n\n"
#	clean the shell and run the executable

show:
	@clear
	@printf "\n .....showing [$(SRC)]..... \n\n"
	@cat $(SRC)
	@printf "\n"
	@printf "\n .....end of [$(SRC)]..... \n\n"
#clean the shell and show the code of the sources

makeupdate:
	@cp ./Makefile ~/.emacs.d/Makefile

# buildtemp:
#	mkdir -p $(EMACSTEMP)

# deltemp:
#	rm -r $(EMACSTEMP)

# newcpp:

# 	@mkdir -p $(OUTPATH)/cppex
# 	@mkdir -p $(EMACSTEMP)
# 	@cp -r $(EMACSCPP)/newcpp/* $(EMACSMAKE) $(EMACSTEMP)
# 	@cp -r --backup=t $ $(EMACSTEMP) $(OUTPATH)/cppex/es
# 	@rm -r $(EMACSTEMP)

emaczip:
	@make emacsout
	@zip $(OUTPATH)/emacs.zip $(OUTPATH)/emacs

newcpp:
	ind=1 ; while [[ $$ind -le 255 ]] ; do \
		[ if ! -d (OUTPATH)/cppex/es$$ind ]; then \
			mkdir -p $(OUTPATH)/cppex/es$$ind; \
			mkdir -p $(EMACSTEMP); \
			cp -r $(EMACSCPP)/newcpp/* $(EMACSMAKE) $(EMACSTEMP); \
			cp -r --backup=t $ $(EMACSTEMP) $(OUTPATH)/cppex/es$$ind; \
			rm -r $(EMACSTEMP); \
			((ind = 254)); \
		fi; \
		((ind = ind + 1)) ; \
	done

# ---

