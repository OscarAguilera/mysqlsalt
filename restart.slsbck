{% from "mysqlsalt/map.jinja" import mysqlsalt with context %}
mysql_restart:
  module.wait:
    - name: service.restart
    - m_name: {{ mysqlsalt.service}}
    - watch:
      - mysql_server_config