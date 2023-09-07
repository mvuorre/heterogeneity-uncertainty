# Bayesian assessment of heterogeneity in psychological phenomena

Materials and source for our manuscript on Bayesian assessment of heterogeneity in psychological phenomena. 

## Data

We use data from <https://github.com/kzee/heterogeneityproject>. The manuscript source automatically pulls that data to a local filesystem.

## Reproduce

1. Clone the contents of this repository (e.g. bash: `git clone https://github.com/mvuorre/heterogeneity-uncertainty.git`)
2. Make sure the project root is the current working directory (i.e. activate the `heterogeneity-uncertainty.Rproj` R Studio project)
3. Recreate the R environment using renv: <https://cloud.r-project.org/web/packages/renv/index.html>
4. "knit" the `ms.Rmd` manuscript source R Markdown file (e.g. R: `rmarkdown::render('ms.Rmd')`).
