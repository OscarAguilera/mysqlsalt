#Since we "already" have the mariadb formula set, we can use the init to include all the packages
#at once instead of apply one by one separated by comma since all packages have dependencies
#between each other so for this case we need to create the init.sls which will have those files
# binded together. The order matter so keep an eye on this when you create the files
include:
  - mysql.server
  - mysql.config