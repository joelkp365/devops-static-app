@"
provider \"digitalocean\" {
  token = var.do_token
}

resource \"digitalocean_droplet\" \"web\" {
  image  = \"ubuntu-22-04-x64\"
  name   = \"devops-static-droplet\"
  region = \"nyc3\"
  size   = \"s-1vcpu-1gb\"

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y docker.io
              docker run -d --name devops-static -p 80:80 \${var.dockerhub_user}/devops-static-app:latest
              EOF
}
"@ | Out-File -Encoding utf8 devops-static-app/terraform/main.tf
Write-Host "terraform/main.tf created"
