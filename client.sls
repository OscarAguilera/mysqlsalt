{% from "mysqlsalt/map.jinja" import mysqlsalt with context %}
mysql_client_install:
  pkg.installed:
    - name: {{mysqlsalt.client}}