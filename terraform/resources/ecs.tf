resource "aws_ecr_repository" "tech-challenge-fast-api" {
  name = "tech-challenge-fast-api-image-registry",
  tags = {
    "environment": "production",
    "project": "tech-challenge-1",
    "purpose": "Provide images of fast api application",
    resource_name: "tech-challenge-fast-api"
    "status": "active"
  }
}