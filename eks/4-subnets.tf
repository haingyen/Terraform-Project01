resource "aws_subnet" "private_az1" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.0.0/19"
  availability_zone = local.az1

  tags = {
    "Name" = "${local.env}-private-${local.az1}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}

resource "aws_subnet" "private_az2" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.32.0/19"
  availability_zone = local.az2

  tags = {
    "Name" = "${local.env}-private-${local.az2}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}

resource "aws_subnet" "public_az1" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.64.0/19"
  availability_zone = local.az1

  tags = {
    "Name" = "${local.env}-public-${local.az1}"
    "kubernetes.io/role/elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}
resource "aws_subnet" "public_az2" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.96.0/19"
  availability_zone = local.az2

  tags = {
    "Name" = "${local.env}-public-${local.az2}"
    "kubernetes.io/role/elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}