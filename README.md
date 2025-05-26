# 🦠 CDI Microbiome

Modular, reproducible analysis framework for microbiome data using **Bookdown**, **renv**, and **GitHub Actions**.

---

![Test Book Build](https://github.com/datainsights/cdi-microbiome/actions/workflows/test-book.yml/badge.svg)
![Deploy Book](https://github.com/datainsights/cdi-microbiome/actions/workflows/deploy-book.yml/badge.svg)

> Manual test + auto-deploy CI split for clean and controlled builds.

---

## 📘 Overview

This domain focuses on microbiome workflows and reproducible report generation through layered Bookdown outputs:

- 🧪 **Exploratory Data Analysis (EDA)** layer
- 📊 **Visualization (VIZ)** layer *(coming soon)*
- 📐 **Statistical Analysis (STATS)** layer *(coming soon)*
- 🧠 **Machine Learning (ML)** layer *(coming soon)*

Each layer is modular and version-controlled, allowing smooth scale-up across data science projects.

---

## 🛠️ Environment Setup

Use renv to restore dependencies:

```bash
Rscript -e 'renv::restore()'
```

Or, run the automated setup:

```bash
chmod +x setup_env.sh
./setup_env.sh
```

---

## 🚀 Build & Deploy

To build the Bookdown site manually:

```bash
cp index-eda-gitbook.Rmd index.Rmd
cp _bookdown-eda.yml _bookdown.yml
Rscript -e 'bookdown::render_book("index.Rmd", output_dir = "docs")'
```

On push to `main`, the `docs/` folder is automatically deployed to GitHub Pages.

---

## 📁 Structure

```bash
cdi-microbiome/
├── .github/workflows/
│   ├── test-book.yml         # Manual build test
│   └── deploy-book.yml       # Push-to-main deployment
├── index-eda-gitbook.Rmd     # Entry point for Bookdown
├── _bookdown-eda.yml         # EDA Bookdown config
├── cdi-install-packages.R    # Modular installer
├── common.R                  # Shared packages
├── microbiome.R              # Domain-specific packages
├── setup_env.sh              # Local env setup
├── renv.lock                 # Snapshot of R environment
└── docs/                     # Rendered book output
```

---

## 🔐 License

MIT © [Complex Data Insights](https://complexdatainsights.com)
