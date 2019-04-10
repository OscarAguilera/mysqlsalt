{% if grains['os_family']== 'RedHat' %}

mysql_root_password_set:
  cmd.run:
    - name: mysqladmin --host localhost --user {{pillar['mysqlsalt']['root'][name]}} password '{{pillar['mysqlsalt']['root']['password']}}'
    - unless:  mysql --host localhost --user {{pillar['mysqlsalt']['root']['name']}} password '{{pillar['mysqlsalt']['root']['password']}}' --execute="SELECT 1;"

{% endif %}

mysql_root_user:
  mysql_user.present:
    - name: {{pillar['mysqlsalt']['root']['name']}}
    - password: {{pillar['mysqlsalt']['root']['password']}}
    - host: localhost