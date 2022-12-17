# NAM ?= main
# #	file name

# TARGET = main

# EXT = cpp
# #	file extension

# COMP = g++
# #	compiler

# SRC = $(NAM).$(EXT)
# #	source file, with [space] in between two of them

# APP = main.exe
# #	executable file

# ODIR = $(NAM)_objs
# # object directory

# FLAGS =
# #	other libraries

# OBJS = $(patsubst %.$(EXT), $(ODIR)/%.o, $(SRC))
# #	"pathsub" substitute arg 2 to arg 1 in arg 3
# #	save file as objects (.o) to keep track of which are modified
# #	recompile only modified objects

# $(ODIR)/%.o: %.$(EXT)
# 	@mkdir -p $(ODIR)
# 	@$(COMP) -c -o $@ $< $(FLAGS)
# # "-c" to compile
# #	"-o" to rename outupt
# # "$@"	is target
# #	"$<" is prerequisite

# all: 	$(OBJS)
# 	@$(COMP) -o $(APP) $(OBJS)
# # "all" is called even without target
# #	used to make the executable file (APP)

# .PHONY: run clear
# # ".PHONY" to avoid generating  prerequisite files

# run: all
# 	./$(APP)
# # execute "all" and launch (APP)

# clean:
# 	rm -f $(ODIR)/*.o
# # "rm" removes
# # "-f forces the action
# # used to remove the objects in (ODIR)

# run $(TARGET): run $(NAM)=$(TARGET) 


CC = g++

  # compiler flags:
  #  -g     - this flag adds debugging information to the executable file
  #  -Wall  - this flag is used to turn on most compiler warnings
#CFLAGS  = -g -Wall



DIR = .

# all: $(TARGET)

# $(TARGET): $(TARGET).cpp
# 	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).cpp
# 	./$(TARGET)

run:
	$(CC) $(CFLAGS) -o $(NAM).exe $(NAM).cpp
	./$(NAM)

select $(TARGET): 
	make run NAM="${TARGET}"
