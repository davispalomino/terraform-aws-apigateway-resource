terraform {
  required_version = ">= 0.12.1"
}
resource "aws_api_gateway_resource" "this" {
    count       = "${var.path_part == null ? null : length(var.path_part)}"
    rest_api_id = "${var.rest_api}"
    parent_id   = "${var.parent_id}"
    path_part   = "${var.path_part[count.index]}"
}
