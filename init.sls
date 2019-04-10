#Since we "already" have the mariadb formula set, we can use the init to include all the packages
#at once instead of apply one by one separated by comma since all packages have dependencies
#between each other so for this case we need to create the init.sls which will have those files
# binded together. The order matter so keep an eye on this when you create the files
# Notice that we are using salt '*012*' state.sls mysqlsalt.server,mysqlsalt.config,mysqlsalt.restart
#to apply the changes and we are calling state by state, 
#by using init we are already calling those states
include:
  - mysqlsalt.server
  - mysqlsalt.config
