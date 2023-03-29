#Makefile for generic programming enviroment

.PHONY:	#Run the app without maintaining prerequisite files
	@make run
	@make clean

run:	#Execute "all" and run the app
	@make all
	@./$(APP)

clean:	#Delete the prerequisite files
	@rm -f $(ODIR)/*.o
#	"rm" removes
#	"-f forces the action
#	Used to remove the objects in (ODIR)

focus:	#Clear the shell and execute the app
	@make all
	@clear
	@printf "\n   .....running [$(APP)].....\n\n"
	@./$(APP)
	@printf "\n   .....[$(APP)] ended.....\n\n"

show:	#Clear the shell and show the code
	@clear
	@printf "\n .....showing [$(SRC)]..... \n\n"
	@cat $(SRC)
	@printf "\n"
	@printf "\n .....end of [$(SRC)]..... \n\n"
