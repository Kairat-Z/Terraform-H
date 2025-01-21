variable region {
    default = "us-east-2"
    type = string
    description = "Provide a region"
}

variable key_name {
    default = "deployer-key"
    type = string
}

variable port {
    type = list
    default = [22, 80, 443]
}


variable instance_type {
    default = "t2.micro"
}

variable ami_id {
    default = "ami-0884d2865dbe9de4b"
}

variable instance_name {
    default = "kaizen-kai"
}