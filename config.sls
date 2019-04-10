#If we ran the init at was created only 2 states were included so the restart was missing
# you can see by the below output
#digitalonus012c.mylabserver.com:
#----------
#          ID: mysql_server_install
#    Function: pkg.installed
#        Name: mariadb-server
#      Result: True
#     Comment: All specified packages are already installed
#     Started: 06:13:26.453240
#    Duration: 1392.473 ms
#     Changes:
#----------
#          ID: mysql_server_config
#    Function: file.managed
#        Name: /etc/my.cnf.d/server.cnf
#      Result: True
#     Comment: The file /etc/my.cnf.d/server.cnf is in the correct state
#     Started: 06:13:27.848946
#    Duration: 17.725 ms
#     Changes:
#
#Summary for digitalonus012c.mylabserver.com
#------------
#Succeeded: 2
#Failed:    0
#------------
#Total states run:     2
#Total run time:   1.410 s
#
#To include the file we can use the init or the latest state that runs so in this case the config
#in order to include id we need to add it on the top of the file not at the bottom 
include:
  - mysqlsalt.restart

mysql_server_config: 
  file.managed: 
    - name: /etc/my.cnf.d/server.cnf 
    - source: salt://mysqlsalt/files/server.cnf 
    - require:
      - pkg: mariadb-server