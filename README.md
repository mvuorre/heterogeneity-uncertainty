# On investigating heterogeneity in psychological phenomena

- Matti Vuorre (mjvuorre@uvt.nl)
- Matthew Kay
- Niall Bolger

Source of *On investigating heterogeneity in psychological phenomena* (Vuorre, Kay, Bolger, in prep). Repo at <https://github.com/mvuorre/heterogeneity-uncertainty>, archived at [todo insert Zenodo DOI].

## Reproduce / contribute

The source code is written in R Markdown. Steps to reproduce the manuscript:

1. Clone the contents of this repository (e.g. bash: `git clone https://github.com/mvuorre/heterogeneity-uncertainty.git`)
2. Run `make` in `/heterogeneity-uncertainty/`

Or you can use R / RStudio:

1. Make sure the project root is the current working directory (i.e. activate the `heterogeneity-uncertainty.Rproj` R Studio project)
2. Recreate the R environment using renv: <https://cloud.r-project.org/web/packages/renv/index.html>
3. "knit" the `ms.Rmd` manuscript source R Markdown file (e.g. R: `rmarkdown::render('ms.Rmd')`).
