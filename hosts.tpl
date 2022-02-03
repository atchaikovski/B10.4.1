[databases]
%{ for index,ip in list_database ~}
mysql ansible_host=${ip}
%{ endfor ~}

[dockers]
%{ for index,ip in list_docker ~}
docker${index} ansible_host=${ip}
%{ endfor }
