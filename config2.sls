#Line: mysql_server_config = Name ID related with the task that is intentioned to be used the state
#Line: file.manage = Module that we are using to configure and manage files from master to minions.
#Line: -name = Destination and name
#Line: -source = Location for the file
#Now we will add some requisites so it could be needed for any package have some relationships
# from packages and files, the require system allows us to create it.
#In this case we will have installed the package first or we can have the configuration file that
# will require the package to be installed.
mysql_server_config: 
  file.managed: 
    - name: /etc/my.cnf.d/server.cnf 
    - source: salt://mysqlsalt/files/server.cnf 
    - require:
      - pkg: mariadb-server