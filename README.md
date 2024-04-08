# Terraform Deployment on DigitalOcean

## Overview

This repository contains Terraform configurations to provision resources on DigitalOcean. Follow the instructions below to set up and deploy infrastructure using Terraform.

## Prerequisites

1. **Terraform**: Ensure you have Terraform installed on your machine. You can download Terraform from [here](https://www.terraform.io/downloads.html) and follow the installation instructions.

2. **DigitalOcean Account**: You need a DigitalOcean account to provision resources. If you don't have one, sign up [here](https://www.digitalocean.com/).

3. **DigitalOcean API Token**: Obtain a DigitalOcean API token to authenticate Terraform with your DigitalOcean account. Follow the steps below to create an API token:

    - Log in to your DigitalOcean account.
    - Go to the "API" section in the left sidebar.
    - Click on "Generate New Token".
    - Give your token a name and select the scopes needed for your Terraform operations. At minimum, you'll need read and write access to manage resources.
    - Click on "Generate Token" and copy the generated token.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone <repository_url>
    ```

2. Navigate to the cloned directory:

    ```bash
    cd <repository_directory>
    ```

3. Set up your DigitalOcean API token as an environment variable:

    ```bash
    export DIGITALOCEAN_TOKEN="your_digitalocean_api_token"
    ```

    Replace `"your_digitalocean_api_token"` with the API token you obtained earlier.

4. Initialize Terraform to download required plugins and modules:

    ```bash
    terraform init
    ```

5. Review and customize the Terraform configuration files in the `terraform` directory as per your requirements.

6. Plan the Terraform execution to see what changes will be applied:

    ```bash
    terraform plan
    ```

7. Apply the Terraform configuration to create resources on DigitalOcean:

    ```bash
    terraform apply
    ```

    Confirm by typing `yes` when prompted.

8. Once resources are provisi
