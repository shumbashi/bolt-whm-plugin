#/usr/bin/bash

# Check for and create the directory for plugin and AppConfig files.
if [ ! -d /var/cpanel/apps ]
    then
    mkdir /var/cpanel/apps
    chmod 755 /var/cpanel/apps
fi

# Check for and create the directory for plugin CGI files.
if [ ! -d /usr/local/cpanel/whostmgr/docroot/cgi/bolt ]
  then
    mkdir /usr/local/cpanel/whostmgr/docroot/cgi/bolt
    chmod 755 /usr/local/cpanel/whostmgr/docroot/cgi/bolt
fi

# Check for and create the directory for plugin template files.
if [ ! -d /usr/local/cpanel/whostmgr/docroot/templates/bolt ]
  then
    mkdir /usr/local/cpanel/whostmgr/docroot/templates/bolt
    chmod 755 /usr/local/cpanel/whostmgr/docroot/templates/bolt
fi

# Install PIP Packages
pip install Jinja2

# Register the plugin with AppConfig.
/usr/local/cpanel/bin/register_appconfig ./conf/bolt.conf

# Copy plugin files to their locations and update permissions.
/bin/cp ./cgi/bolt.cgi /usr/local/cpanel/whostmgr/docroot/cgi/bolt
/bin/cp ./cgi/index.cgi /usr/local/cpanel/whostmgr/docroot/cgi/bolt
chmod 755 /usr/local/cpanel/whostmgr/docroot/cgi/bolt/bolt.cgi
chmod 755 /usr/local/cpanel/whostmgr/docroot/cgi/bolt/index.cgi
/bin/cp ./template/bolt.tmpl /usr/local/cpanel/whostmgr/docroot/templates/bolt
/bin/cp ./images/bolt-64x64.png /usr/local/cpanel/whostmgr/docroot/addon_plugins