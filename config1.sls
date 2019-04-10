mysql_server_config: #Name ID related with the task that is intentioned to be used the state
  file.managed: #Module that we are using to configure and manage files from master to minions.
    - name: /etc/my.cnf.d/server.cnf #Destination and name
    - source: salt://mysqlsalt/files/server.cnf #Location for the file