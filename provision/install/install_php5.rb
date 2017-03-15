#======================================
# Lamp-Vagrant
# @author : HR
# @copyright : Dumday (c) 2017
#======================================
# Install php5
lv = LampVagrant.instance
command = lv.command
lv.push_install_message(["PHP 5"])
lv.push_install([
    "python-software-properties",
    "php5",
    "libapache2-mod-php5",
    "php5-mcrypt"
  ])
# Applying new php version to apache2
command.push_message("Apply PHP 5 to Apache2 ...")
command.push("a2dismod php5.6 2>dev>null")
command.push("a2dismod php7 2>dev>null")
command.push("a2enmod php5 2>dev>null")