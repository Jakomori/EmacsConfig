#Makefile for Emacs things

EDTRPTH = $(EALL)

EPATHS = $(ENT) $(ECST) $(EMK) $(ECPP) $(GIT) $(GITIGN)
#	List aff all emacs important file, with absolute reference

ENAMES = $(NT) $(CST) $(MK) $(CPPF) $(GIT) $(GITIGN)
#	List aff all emacs important file, only names

NT = init.el jinit.el		#Emacs init files
CST = custom			#Emacs "custom" folder
MK = Makefile makefiles		#Emacs Makefiles
CPPDIR = resources/newcpp/*	#CPP project folder
TMP = temp			#Temporary folder
GIT = .git			#Git folder
GITIGN = .gitignore		#.gitignore

ENT =  $(EMACS)/$(NT)
ECST = $(EMACS)/$(CST)
EMK =  $(EMACS)/$(MK)
ECPP = $(EMACS)/$(CPPDIR)
ETMP = $(EMACS)/$(TMP)
EGITIGN = $(EMACS)/$(GITIGN)

EMACS = ~/.emacs.d
#	Emacs folder
