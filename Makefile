#	MAKEFILE

#	--- DIRECTIVES

-include makefiles/makecpp.mk
-include makefiles/makeprogram.mk
-include makefiles/makeemacs.mk

NAM = main
#	File name

EXT = cpp
#	File extension

COMP = g++
#	Compiler

SRC = $(NAM).$(EXT)
#	Source files, with [space] in between two or more of them

APP = $(NAM).exe
#	Executable file

ODIR = $(NAM)_objs
#	Object directory

OUTPATH = ~/Desktop
#	Output directory

INPATH = ./

FLAGS =
#	Other flags

LIBS =	-lncurses
#	Other libraries

OBJS = $(patsubst %.$(EXT), $(ODIR)/%.o, $(SRC))
#	"pathsub" substitute arg 2 to arg 1 in arg 3
#	save file as objects (.o) to keep track of which are modified
#	recompile only modified objects
