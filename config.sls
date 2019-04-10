{% from "mysqlsalt/map.jinja" import with context %}
include:
  - mysqlsalt.restart

mysql_server_config: 
  file.managed: 
    - name: {{mysqlsalt.server_conf}}
    - source: {{mysqlsalt.server_conf_source}} 
    - require:
      - pkg: {{mysqlsalt.server}}