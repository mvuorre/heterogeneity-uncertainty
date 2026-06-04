SOURCE = index.qmd

all: renv render

renv:
	Rscript -e "renv::restore()"

render: docs/index.html

docs/index.html: $(SOURCE)
	quarto render $<

ms.docx: $(SOURCE)
	quarto render $< --to docx --output $@

clean:
	rm -rf *_cache *_files _freeze docs/ docs-docker/

# Build docker image
docker-build:
	docker build -t heterogeneity-uncertainty .

# Render the manuscript in a clean container and write outputs to docs-docker/
docker-check: docker-build
	rm -rf docs-docker
	mkdir -p docs-docker
	docker run --rm -v "$(PWD)/docs-docker:/manuscript/docs" heterogeneity-uncertainty

docker-clean:
	docker rmi heterogeneity-uncertainty || true

.PHONY: renv clean docker-build docker-check docker-clean
