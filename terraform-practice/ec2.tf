resource "aws_key_pair" "my_key" {
  key_name = "my-key"  
  public_key = file( "my_key.pub" )
}

 resource "aws_default_vpc" "default" {
   
 }

resource "aws_security_group" "my_sg" {
   name= " my z plus security"
    description = "this is a sg created by TF"
    vpc_id = aws_default_vpc.default.id #interpolation
    ingress {
        description = "allow access to ssh port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]

    }

    egress {
        description = "allow all outgoig traffic"
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]

    }
    tags = {
      name= "MY Z plus security"
    }
   

}

 resource "aws_instance" "my_instance" {
    ami = "ami-0e35ddab05955cf57"
    instance_type = "t2.micro"
    security_groups = [ aws_security_group.my_sg.name ]
    key_name = aws_key_pair.my_key.key_name

    root_block_device {
      volume_size = 10
      volume_type = "gp3"

    }
    tags = {
      name="auto-junoon-server"
    }
   
 } 