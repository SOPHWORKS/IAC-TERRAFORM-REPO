# datasource is used to pull all azs in aws

data "aws_availability_zones" "azs"{
state = "available"
}
