#!/bin/bash
set -e
# 🧠 Check if CDI_DOMAIN is not set in the environment
if [ -z "$CDI_DOMAIN" ]; then  # -z checks if variable is undefined or empty
  # 📝 Prompt the user to enter the domain manually (interactive fallback)
  read -p "Enter domain (e.g., rnaseq, microbiome): " CDI_DOMAIN
fi

# Set the domain explicitly (update if needed)
export CDI_DOMAIN=microbiome

echo "🔁 Starting R package installation..."
Rscript scripts/cdi-install-packages.R
echo "✅ R package installation complete."