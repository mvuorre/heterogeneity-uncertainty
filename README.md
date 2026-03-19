# Communicating causal effect heterogeneity

- Matti Vuorre (mjvuorre@uvt.nl)
- Matthew Kay
- Niall Bolger

Source of *Communicating causal effect heterogeneity* (Vuorre, Kay, Bolger, 2026; <https://osf.io/preprints/psyarxiv/mwg4f>). Repo at <https://github.com/mvuorre/heterogeneity-uncertainty>. Archived at <https://doi.org/10.5281/zenodo.19070789>.

## Reproduce / contribute

The source code is written in R as a Quarto document. Steps to reproduce the manuscript locally:

- Clone the contents of this repository (e.g. bash: `git clone https://github.com/mvuorre/heterogeneity-uncertainty.git`)
- (Optional) Customize environment variables (see `.Renviron.example`)
- Run `make` to reproduce locally OR
- Run `make docker-check` to reproduce using Docker OR
- Restore the R environment with {renv}, then render `index.qmd` with Quarto
