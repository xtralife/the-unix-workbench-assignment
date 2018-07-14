all: README.md

README.md:
	@echo "# Final peer-graded assignment for The Unix Workbench" > README.md
	@echo "\nThis file was created on: **"$$(date)"**"  >> README.md
	@echo "\nThe number of lines of code in **guessinggame.sh**: **"$$(wc -l guessinggame.sh | egrep -o "[0-9]+")"**" >> README.md

clean:
	@rm README.md
