output "instances" {
  value = [
    for instance in aws_instance.web_server : {
      hostname = instance.tags["Name"]
      public_ip = instance.public_ip
      private_ip = instance.private_ip
    }
  ]
}