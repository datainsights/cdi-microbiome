# 📘 Domain-Specific R Packages for Microbiome Analysis and Community Profiling

# Ensure BiocManager is available (if needed)
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
library(BiocManager)

# List of core packages for this domain
domain_pkgs <- c("phyloseq", "microbiome", "qiime2R", "vegan")

for (pkg in domain_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    renv::install(pkg, repos = BiocManager::repositories())
  }
}

# Optional GitHub-based package for this domain (if applicable)
# if (!requireNamespace("somePackage", quietly = TRUE)) {
#   renv::install("username/somePackage")
# }

# Install GitHub package: mikropml
if (!requireNamespace("mikropml", quietly = TRUE)) {
  renv::install("microsud/mikropml")
}

message("✅ microbiome-domain setup complete.")
