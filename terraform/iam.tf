########################################################################################
# Este arquivo descreve os recursos do IAM: função de tarefa ECS, função de execução ECS
########################################################################################

resource "aws_iam_role" "ecsTaskExecutionRole" {
    count var.aws_iam_role ? 1 : 0

    name                  = "app-ecsTaskExecutionRole"
    assume_role_policy    = data.aws_iam_policy_document.assume_role_policy.json
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions               = ["sts:AssumeRole"]

    principals {
      type                = "Service"
      identifiers         = ["ecs-tasks.amazonaws.com"]
    }
  }
}

resource "aws_iam_role_policy_attachment" "ecsTaskExecutionRole_policy" {
    role                  = aws_iam_role.ecsTaskExecutionRole.name
    policy_arn            = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_role" "ecsTaskRole" {
    count var.aws_iam_role ? 1 : 0
    name                  = "ecsTaskRole"
    assume_role_policy    = data.aws_iam_policy_document.assume_role_policy.json   
}

resource "aws_iam_role_policy_attachment" "ecsTaskRole_policy" {
    count var.aws_iam_role_policy_attachment ? 1 : 0
    role                  = aws_iam_role.ecsTaskRole.name
    policy_arn            = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}
