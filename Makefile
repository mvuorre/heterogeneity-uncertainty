SOURCE = index.qmd

all: renv docs

renv:
	Rscript -e "renv::restore()"

docs: $(SOURCE) _quarto.yml
	quarto render

render-docx: $(SOURCE) _quarto.yml
	quarto render index.qmd --to docx --output ms.docx --output-dir .

clean:
	rm -rf *_cache *_files _freeze *.pdf *.docx docs/ docs-docker/

# Build docker image
docker-build:
	docker build -t heterogeneity-uncertainty .

# Render the manuscript in a clean container and write outputs to docs-docker/
docker-check: docker-build
	@echo "Running reproducibility check..."
	@rm -rf docs-docker
	@mkdir -p docs-docker
	@docker run --rm -v "$(PWD)/docs-docker:/manuscript/docs" heterogeneity-uncertainty
	@echo "✓ Reproducibility check passed - outputs in docs-docker/"

docker-clean:
	docker rmi heterogeneity-uncertainty || true

.PHONY: renv docs render-docx clean docker-build docker-check docker-clean
