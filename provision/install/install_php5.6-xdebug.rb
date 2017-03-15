#======================================
# Lamp-Vagrant
# @copyright : Dumday (c) 2017
#======================================
lv = LampVagrant.instance
command = lv.command
lv.push_install_message(["Xdebug for PHP 5.6"])
# Ensure xdebug directory exists
command.push(command.create_folder("/usr/lib/php5/20131226"))
lv.queue_copy("etc/php/5.6/apache2/php.ini")
lv.queue_copy("usr/lib/php5/20131226/xdebug.so")