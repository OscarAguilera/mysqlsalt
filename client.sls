#Adding single state to show on the top file how target a single state to a minion or targets
mysql_client_install:
  pkg.installed:
    - name: mysql-client