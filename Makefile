all: renv ms.pdf ms.docx

ms.pdf: ms.Rmd
	Rscript -e "rmarkdown::render('ms.Rmd', 'papaja::apa6_pdf')"

ms.docx: ms.Rmd
	Rscript -e "rmarkdown::render('ms.Rmd', 'papaja::apa6_docx')"

renv:
	Rscript -e "renv::restore()"

clean:
	rm -rf ms_cache ms_files ms.pdf ms.docx

.PHONY: all clean renv
