{% from "mysqlsalt/map.jinja" import mysqlsalt with context %}

mysql_service_enable:
  service.running:
    - name: {{mysqlsalt.service}}