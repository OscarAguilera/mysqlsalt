#MySQL Server initial state
#State id that need to be descripted to understand what it does
#We are installing so we use the pkg.installed package that will ensure that the software will 
#be installed 
#Make sure that the software or package that you want to install match or exist with the name 
#that you are trying to install for the particular OS, for example MySQL on CentOS instead of 
#be mysql is mariadb-server
#Jinja is a Python-based templating language -- remember that Salt is written in Python -- 
#and works with Python 2.4 and above. When we use Jinja in a state, it is evaluated before the YAML
#itself, prior to the state running.
#Perhaps the easiest way to identify Jinja is by it's opening and closing brackets, called 
#delimiters:
# {% ... %}: Statements
# {{ ... }}: Expressions; in Salt, this is how we call variables
# {# ... #}: Comments
{% if grains['os_family'] == 'Debian' %}
mysql_debconf_install:
  pkg.installed:
    - name:debconf
mysql_debconf_settings:
  debconf.set:
    - name: mysql-server
    - data: 
        'mysql-server/root_password': {'type': 'password', 'value': 'tempass'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'tempass'}
    - require:
      - pkg:debconf
    - require_in:
      - mysql_server_install


{% endif %}

mysql_server_install: 
  pkg.installed: 
    - name: mysql-server
    #- name: mariadb-server using the ubuntu installer to test
