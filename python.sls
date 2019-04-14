{% from "mysqlsalt/map.jinja" import mysqlsalt with context %}

mysql_pythin_install:
  pkg.installed:
    - name: {{mysqlsalt.python}}
