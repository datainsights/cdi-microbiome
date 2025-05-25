#!/bin/bash

set -e  # ⛔ Exit the script immediately if any command fails

# 🧠 Check if CDI_DOMAIN is not set in the environment
if [ -z "$CDI_DOMAIN" ]; then  # -z checks if variable is undefined or empty
  # 📝 Prompt the user to enter the domain manually (interactive fallback)
  read -p "Enter domain (e.g., rnaseq, microbiome): " CDI_DOMAIN
fi

# 🖨️ Inform the user what’s happening
echo "📦 Setting up R environment for CDI domain: ${CDI_DOMAIN}"

# 🚀 Run the R installation script, which reads from CDI_DOMAIN inside
Rscript cdi-install-packages.R