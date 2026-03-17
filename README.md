# Communicating causal effect heterogeneity

- Matti Vuorre (mjvuorre@uvt.nl)
- Matthew Kay
- Niall Bolger

Source of *Communicating causal effect heterogeneity* (Vuorre, Kay, Bolger, in prep). Repo at <https://github.com/mvuorre/heterogeneity-uncertainty>. Archived at <https://doi.org/10.5281/zenodo.19070789>.

## Reproduce / contribute

The source code is written in R as a Quarto document. Steps to reproduce the manuscript locally:

- Clone the contents of this repository (e.g. bash: `git clone https://github.com/mvuorre/heterogeneity-uncertainty.git`)
- (Optional) Customize environment variables (see `.Renviron.example`)
- Run `make` in `/heterogeneity-uncertainty/` OR
- Restore the R environment with {renv} (<https://cloud.r-project.org/web/packages/renv/index.html>), render `index.qmd` with Quarto
- Read manuscript in `docs/`
