## cdi-install_packages.R

# Ensure renv and BiocManager are available
if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")
library(renv)
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
library(BiocManager)

# Initialize renv if not already set up
if (!file.exists("renv.lock")) {
  renv::init(bare = TRUE)
}

# ---------------------------
# 📊 General Data Science
# ---------------------------
general_cran <- c("tidyverse", "janitor", "skimr", "plotly", "broom", "rstatix")
for (pkg in general_cran) {
  if (!requireNamespace(pkg, quietly = TRUE)) renv::install(pkg)
}

# ---------------------------
# 🎨 Visualization
# ---------------------------
viz_cran <- c("ggplot2", "ggthemes", "patchwork", "plotly")
for (pkg in viz_cran) {
  if (!requireNamespace(pkg, quietly = TRUE)) renv::install(pkg)
}

# ---------------------------
# 📘 Documentation Tools
# ---------------------------
docs_cran <- c("bookdown", "rmarkdown", "downlit", "xml2")
for (pkg in docs_cran) {
  if (!requireNamespace(pkg, quietly = TRUE)) renv::install(pkg)
}

# ---------------------------
# 🧬 Bioinformatics (Bioconductor)
# ---------------------------
bio_bioc <- c("DESeq2", "limma", "edgeR", "MSnbase", "BiocGenerics", "SummarizedExperiment", "S4Vectors", "genefilter")
for (pkg in bio_bioc) {
  if (!requireNamespace(pkg, quietly = TRUE)) renv::install(pkg, repos = BiocManager::repositories())
}

# ---------------------------
# 🤖 Machine Learning
# ---------------------------
ml_cran <- c("caret", "xgboost", "randomForest", "e1071", "glmnet", "ranger", "nnet", "mlr3", "mlr3learners", "mlr3viz", "yardstick")
for (pkg in ml_cran) {
  if (!requireNamespace(pkg, quietly = TRUE)) renv::install(pkg)
}

# mikropml from GitHub
if (!requireNamespace("mikropml", quietly = TRUE)) {
  renv::install("SchlossLab/mikropml")
}

# Snapshot environment
# Save current package versions to renv.lock for reproducibility
renv::snapshot()
