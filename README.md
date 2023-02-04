# Bolt Website Locker

Bolt is a WHM Plugin to help system administrators quickly protect (lock) and un-protect (unlock) a Website public_html directory.

Bolt works by creating the necessary Apache config files and placing them in apache userdata folders, this includes generating a random password and reloading apache service. Placing those files outside the user account prevents the user from unlocking the website on his own.

Developed by: [Ahmed Shibani](https://github.com/shumbashi)
License:Apache License Version 2.0

## Installation

1. Download the latest package from Releases page
2. Uncompress the downloaded package
```
tar -xzf bolt-whm-plugin_latest.tar.gz
```
3. Run the installer
```
cd bolt-whm-plugin_latest/
bash installer.sh
```
