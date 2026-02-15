# 🛠️ DevOps CI/CD Toolkit
> **Purpose**: Setup and use CI/CD across VM-based and K8s-based platforms.

A collection of reusable GitLab CI/CD templates and automation scripts designed for enterprise-grade PHP, WordPress, and Symfony deployments. This toolkit provides the "DevOps Glue" for both the **[LAMP Hosting Platform](https://github.com/chinmaymjog/azure-lamp-hosting)** and the **[AKS/WordPress Ecosystem](https://github.com/chinmaymjog/wp-boilerplate)**. This toolkit streamlines the "Development to Production" workflow with built-in security and quality hurdles.

## 🚀 Repository Highlights

- **Reusable Templates**: Modular `.yml` templates for different frameworks (Symfony, WordPress).
- **Automation Scripts**: Shell scripts for database management (dump/restore), file synchronization, and Azure storage interactions.
- **Security-First**: Integrated secret detection and static analysis (SonarQube) steps.
- **Mult-Environment Support**: Built-in logic for Staging and Production deployments using standardized tagging.

## 📁 Project Structure

```text
.
├── scripts/              # Standalone utility scripts (DB, File, Azure)
├── symfony.yml           # CI/CD template for Symfony applications
├── wordpress.yml         # CI/CD template for WordPress sites
├── basics.yml            # Core CI/CD stage definitions
└── .github/              # GitHub Actions for toolkit validation
```

## 🔧 Automation Scripts

Detailed scripts are located in the `scripts/` directory:
- `db-dump`: Securely backup MySQL databases to Azure Blob Storage.
- `db-restore`: Restore databases from storage to any environment.
- `assets-sync`: Synchronize file assets between different Azure FileShares.
- `container-create`: Bootstrap new Azure Storage containers for backups.

## 🏗️ Usage in GitLab

Include these templates in your project's `.gitlab-ci.yml`:

```yaml
include:
  - project: 'chinmaymjog/devops-toolkit'
    ref: master
    file: '/symfony.yml'
```

## 🛡️ License
Distributed under the MIT License. See `LICENSE` for more information.