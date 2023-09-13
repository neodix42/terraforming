[validators]
%{ for index, ip in addresses ~}
  ${nodes[index]} ansible_host=${ip} ansible_user=${user}
%{ endfor ~}