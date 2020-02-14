resource "aws_db_subnet_group" "db_subnet_group" {
  name_prefix = "${var.name_prefix}"
  description = "${var.description}"
  subnet_ids  = ["${var.subnet_ids}"]
  tags        = "${var.common_tags}"
}