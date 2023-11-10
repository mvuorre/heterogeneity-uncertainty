all: renv ms

renv:
	Rscript -e "renv::restore()"

ms: pdf docx

pdf: ms.Rmd
	Rscript -e "rmarkdown::render('$<', 'papaja::apa6_pdf')"

docx: ms.Rmd
	Rscript -e "rmarkdown::render('$<', 'papaja::apa6_docx')"

clean:
	rm -rf ms_cache ms_files ms.pdf ms.docx
