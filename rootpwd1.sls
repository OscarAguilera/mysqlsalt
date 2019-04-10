{% if grains['os_family']== 'RedHat' %}

mysql_root_password_set:
  cmd.run:
    - name: mysqladmin --host localhost --user root password 'tempass'
    - unless:  mysql --host localhost --user root password 'tempass' --execute="SELECT 1;"

{% endif %}

mysql_root_user:
  mysql_user.present:
    - name: root
    - password: tempass
    - host: localhost