<p align="center"><a href="#" target="_blank"><img src="https://www.serviops.ca/wp-content/uploads/2015/07/Google-Cloud-Platform-GCP-Logo.png" width="400"></a></p>

# Infrastructure

## How to config ?
### Setup 
1. Install terraform and gcp sdk
2. Install letsecrypt for gke: https://kosyfrances.com/letsencrypt-dns01/
3. Buy domain and register record NS for gcp   
4. Make service_account for gcp and save credentials.json
5. Auth for gcp
6. Copy terraform.tfvars.sample and change the config that suits you 
### How to set this template ? 
1. `terraform init`
2. `terraform plan`
3. `terraform apply`
4. `Make install`

### Additional questions

#### How much for this gke
- It depends on the type of machine and its size. I use e2-small and I get one node for less than 5 dollars.