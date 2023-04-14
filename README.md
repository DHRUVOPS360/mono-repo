# Terraform Deployment to Google Cloud Platform (GCP)

This repository contains Terraform code to deploy resources in GCP using GitHub Actions. The deployment includes creating a Google Compute Engine instance and a firewall rule.

## Workflow

The deployment workflow in this repository consists of the following stages:

- **Dev**: Deploys the resources to the Dev environment.
- **QA**: Deploys the resources to the QA environment, which depends on the successful completion of the Dev stage.
- **Prod**: Deploys the resources to the Prod environment, which depends on the successful completion of the QA stage.
- **Destroy**: Destroys the resources in the Destroy environment, which depends on the successful completion of the Prod stage.

## Prerequisites

Before running the Terraform code, make sure you have the following prerequisites:

- Terraform version 1.0.1 installed
- Google Cloud Platform (GCP) project and credentials
- GitHub Actions configured with secrets for `google_credentials` to authenticate with GCP

## File Structure

The repository contains the following files:

- `main.tf`: Terraform configuration file that defines the resources to be created in GCP, including a Google Compute Engine instance and a firewall rule.
- `provider.tf`: Terraform configuration file that specifies the provider for GCP and sets the project, region, and zone.
- `.github/workflows`: Directory containing GitHub Actions workflows for different environments (Dev, QA, Prod, Destroy) that run the Terraform deployment and destroy commands.

## Usage

1. Fork or clone this repository to your local environment.
2. Update the `provider.tf` file with your own GCP project details.
3. Configure the GitHub Actions workflows with your own environment names and secrets, if required.
4. Push changes to the repository to trigger the GitHub Actions workflows and deploy the resources to the respective environments.
5. Monitor the progress of the workflows in the GitHub Actions tab.
6. After successful completion of the workflows, the resources will be deployed in the respective GCP environments.

Note: Make sure to review and understand the Terraform code before running it in your environment. Always validate and test the changes in a non-production environment before deploying to production.

## Contributing

If you'd like to contribute to this repository, please open an issue or create a pull request with your changes.

## License

This repository is open-source and available under the [MIT License](LICENSE).
