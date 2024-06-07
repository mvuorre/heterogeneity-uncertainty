SOURCE = ms.qmd

all: renv pdf docx

renv:
	Rscript -e "renv::restore()"

pdf: $(SOURCE)
	quarto render $< --to apaquarto-pdf \
	--output ms.pdf \
	-M documentmode:doc

docx: $(SOURCE)
	quarto render $< --to apaquarto-docx \
	--output ms.docx

clean:
	rm -rf ms_cache ms_files ms.pdf ms.docx

.PHONY: renv clean
