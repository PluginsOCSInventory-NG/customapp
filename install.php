<?php
function plugin_version_customapp()
{
return array('name' => 'customapp',
'version' => '1.0',
'author'=> 'Valentin DEVILLE',
'license' => 'GPLv2',
'verMinOcs' => '2.2');
}

function plugin_init_customapp()
{
$object = new plugins;
$object -> add_cd_entry("customapp","other");

$object -> sql_query("CREATE TABLE IF NOT EXISTS `customapp` (
                      `ID` INT(11) NOT NULL AUTO_INCREMENT,
                      `HARDWARE_ID` INT(11) NOT NULL,
                      `PATH` VARCHAR(256) DEFAULT NULL,
                      `TEXT` TEXT DEFAULT NULL,
                      PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                      ) ENGINE=INNODB;");

}

function plugin_delete_customapp()
{
$object = new plugins;
$object -> del_cd_entry("customapp");
$object -> sql_query("DROP TABLE `customapp`");

}