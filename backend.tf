terraform {
    backend "s3" {
        bucket = "santanderbucket"
        key = "santanderbucket_key.tfstate"
        region ="eu-west-2"
    }
}