SOURCE=resume.tex

.PHONY: all
all:
	lualatex $(SOURCE)

.PHONY: clean
clean:
	rm *.aux *.log *.out *.pdf

.PHONY: watch
watch:  ## Recompile on updates to the source file
	while true; do \
		fswatch *.tex resume/*.tex *.cls | make; \
	done
