variable "vpc_name" {
    default  = ""
    description = ""
}
#------------------subnet------------#
variable "cidr_range" {
    default  = ""
    description = ""
}
variable "region" {
    default  = ""
    description = ""
}
variable "pub_subnet_cidr_block" {
    default  = ""
    description = ""
}
variable "pub_subnet_name" {
    default  = ""
    description = ""
}
variable "pri_subnet_name" {
    default  = ""
    description = ""
}
variable "regionpub" {
    default  = ""
    description = ""
}
#---------------------router-------#
variable "routername" {
    default  = ""
    description = ""
}
variable "regionrouter" {
    default  = ""
    description = ""
}
variable "vpcroute" {
    default  = ""
    description = ""
}