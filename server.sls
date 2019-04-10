#MySQL Server initial state
mysql_server_install: #State id that need to be descripted to understand what it does
  pkg.installed: #We are installing so we use the pkg.installed package that will ensure that the software will be installed 
    - name: mariadb-server #Make sure that the software or package that you want to install match or exist with the name that you are trying to install for the particular OS, for example MySQL on CentOS instead of be mysql is mariadb-server