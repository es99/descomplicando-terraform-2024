resource "aws_dynamodb_table" "dynamodb" {
  name           = "descomplicando-terraform-turma-2024"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}