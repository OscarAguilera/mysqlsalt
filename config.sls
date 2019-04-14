{% from "mysqlsalt/map.jinja" import mysqlsalt with context %}

include:
  - mysqlsalt.restart

mysql_server_config:
  file.managed:
    - name: {{ mysqlsalt.server_conf  }}
    - source: {{ mysqlsalt.server_conf_source  }}
    - makedirs: True
    - require:
      - pkg: {{ mysqlsalt.server }}
