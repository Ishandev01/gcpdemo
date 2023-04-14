#----------------vpc--------------#
vpc_name = "githubactions"
#---------------private-subnet-------------#
cidr_range = ["10.0.12.0/22" , "10.0.16.0/22" ]
pri_subnet_name = ["prisubnet1", "prisubnet2"]
region = "asia-south1"
podrange = "10.0.20.0/22"
podrangename = "K8s-pod-range"
# servicerange = "10.0.30.0/22"
# servicename = "K8s-service-range"
#---------------public-subnet------------------#
pub_subnet_cidr_block = ["10.0.4.0/22" , "10.0.8.0/22"]
pub_subnet_name = ["pubsubnet1", "pubsubnet2"]
regionpub = "asia-south2"
#---------------router-------------------------#
routername = "demorouter"
regionrouter = "asia-south1"
#----------------cloudnat--------------------#
namenat = "demonat"
regionnat = "asia-south1"
nameip = "demonatip"
