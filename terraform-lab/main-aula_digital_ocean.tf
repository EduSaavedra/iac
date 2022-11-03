terraform {
  required_version = ">1.0.0" //qualquer uma maior que a 1.0.0
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "TOKEN-DIGITAL-OCEAN"
}

# Criar um droplet (máquina virtual) na região nyc1
resource "digitalocean_droplet" "primeira_vm_terraform" {
  image  = "ubuntu-18-04-x64"
  name   = "primeira-vm-terraform"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}

/* PASSO A PASSO PARA SUBIR A MAQUINA:

    1 - formatar o arquivo com o comando: 
        terraform fmt
    2 - Baixar plugins necessários para o projeto com o comando: 
        terraform init
    3 - Aplicar a infraestrutura com o comando:
        terraform apply

*/