locals { 
    bastion_public_ip = module.oke.bastion_public_ip
    operator_private_ip = module.oke.operator_private_ip
    connection="ssh -J opc@${local.bastion_public_ip} opc@${local.operator_private_ip}"
} 

output "ssh_string" { 
  value = local.connection
} 
