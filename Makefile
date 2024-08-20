SOURCE = index.qmd

all: renv docs

renv:
	Rscript -e "renv::restore()"

docs: $(SOURCE) _quarto.yml
	quarto render

clean:
	rm -rf *_cache *_files _freeze *.pdf *.docx docs

.PHONY: renv clean
