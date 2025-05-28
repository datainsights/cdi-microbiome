# 🦠 CDI Microbiome

[![Live Site](https://img.shields.io/badge/visit-site-blue?logo=githubpages)](https://microbiome.complexdatainsights.com)

📘 **Live guide:** [microbiome.complexdatainsights.com](https://microbiome.complexdatainsights.com)

Modular, reproducible analysis framework for microbiome data using  
**Bookdown**, **renv**, and **GitHub Actions** — published via custom subdomain and GitHub Pages.

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

This project uses both **R** and **Python** for microbiome data analysis.

### 🔄 Option 1: Restore R dependencies directly

```bash
Rscript -e 'renv::restore()'
```

### ⚙️ Option 2: Run the full environment setup (recommended)

```bash
# Make setup scripts executable
chmod +x scripts/setup_r_env.sh
chmod +x scripts/setup_py_env.sh

# Run R and Python environment setup
./scripts/setup_r_env.sh
./scripts/setup_py_env.sh
```

### 📦 Notes

- **R packages** are managed using `renv` and modular installer scripts in `scripts/`.
- **Python packages** are listed in `requirements.txt` and installed using a standard virtual environment (`venv/`) created via Python’s built-in `venv` module.
- Customize the environment by editing:
  - `scripts/common.R` and `scripts/microbiome.R` (for R)
  - `requirements.txt` (for Python)
---
