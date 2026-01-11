############################################
# AWS SECRETS MANAGER SECRET
############################################

resource "aws_secretsmanager_secret" "backend" {
  name = "backend-secret"
}

resource "aws_secretsmanager_secret_version" "backend" {
  secret_id     = aws_secretsmanager_secret.backend.id
  secret_string = jsonencode({
    DATABASE_URL = "postgres://user:pass@db:5432/app"
  })
}

