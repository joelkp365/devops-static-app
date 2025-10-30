@"
variable \"do_token\" {
  type = string
}

variable \"dockerhub_user\" {
  type = string
}
"@ | Out-File -Encoding utf8 devops-static-app/terraform/variables.tf
Write-Host "terraform/variables.tf created"
