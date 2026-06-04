FROM rocker/tidyverse:4.6.0

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Install Quarto
ARG QUARTO_VERSION=1.9.38
ARG TARGETARCH
RUN ARCH=$([ "$TARGETARCH" = "arm64" ] && echo "arm64" || echo "amd64") && \
    curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-${ARCH}.deb && \
    dpkg -i quarto-${QUARTO_VERSION}-linux-${ARCH}.deb && \
    rm quarto-${QUARTO_VERSION}-linux-${ARCH}.deb

# Set working directory
WORKDIR /manuscript

# Copy dependency files first
COPY renv.lock .Rprofile ./
COPY renv/activate.R renv/settings.json renv/

# Install R dependencies
RUN R -e "install.packages('renv')" && \
    R -e "renv::restore(transactional = FALSE)"

# Copy project files
COPY . .

# Run computations during build so _freeze is in image
RUN quarto render index.qmd --to preprint-typst --output ms.pdf --output-dir docs

# Re-render at container start
CMD ["make", "render"]
