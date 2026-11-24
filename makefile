
README.md: guessinggame.sh makefile
	@echo "---" > README.md
	@echo "permalink: /index.html" >> README.md
	@echo "---" >> README.md
	@echo "# Guessing Game Project" >> README.md
	@echo "" >> README.md
	@echo "Date and time of make execution: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

