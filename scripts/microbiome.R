# 🦠 Domain-Specific R Packages for Microbiome Analysis

# Ensure BiocManager is available
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
library(BiocManager)

# List of CRAN + Bioconductor packages
micro_pkgs <- c("phyloseq", "vegan", "microbiome", "pheatmap")

for (pkg in micro_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    renv::install(pkg, repos = BiocManager::repositories())
  }
}

# Install GitHub package: mikropml
if (!requireNamespace("mikropml", quietly = TRUE)) {
  renv::install("microsud/mikropml")
}
