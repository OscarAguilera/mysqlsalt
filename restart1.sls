#This state will restart the mariadb if any change is detected on the mysql_server_config state
#that modify the file that we have destinated and will wait till the restart complete to show
# to the master the output
mysql_restart:
  module.wait:
    - name: service.restart
    - m_name: mariadb
    - watch:
      - mysql_server_config
