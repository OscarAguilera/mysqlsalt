root:
  mysql_user.present:
    - host: localhost
    - password: {{pillar['mysqlsalt']['root']['password']}}
