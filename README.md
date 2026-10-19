# bayesian-mmm-ecommerce

End-to-end bayesian market mix modeling built on Figshare multi-region eCommerce dataset

## Architecture

## Tech Stack
| Layer | Tool |
|-------|------|
| Data Lake | Google Cloud Storage |
| Data Warehouse | BigQuery |
| Transforms | dbt Core |
| ML | Python + VS Code |
| Dashboard | Looker Studio |
| Version Control | GitHub |

## Setup

### 1. GCP Setup
```bash
bash setup_gcp.sh
```

### 2. Project Setup
```bash
bash setup_project.sh
```

### 3. Activate Environment
```bash
source ~/bayesian-mmm-ecommerce-env/bin/activate
```

## Author
May Tilokruangchai