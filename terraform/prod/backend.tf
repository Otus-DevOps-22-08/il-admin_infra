terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "yc-bucket"
    region                      = "ru-central1"
    key                         = "prod/terraform.tfstate"
    access_key                  = "123123123"
    secret_key                  = "123123123123"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
