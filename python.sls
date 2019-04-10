{% from "mysqlsalt/map.jinja" import mysqlsaltwith context %}

mysql_pythin_install:
  pkg.installed:
    - name: {{mysqlsalt.python}}