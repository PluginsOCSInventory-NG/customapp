<?php

/**
 * This function is called on installation and is used to create database schema for the plugin
 */
function extension_install_customapp()
{
    $commonObject = new ExtensionCommon;

    $commonObject -> sqlQuery("CREATE TABLE IF NOT EXISTS `customapp` (
                              `ID` INT(11) NOT NULL AUTO_INCREMENT,
                              `HARDWARE_ID` INT(11) NOT NULL,
                              `PATH` VARCHAR(256) DEFAULT NULL,
                              `TEXT` TEXT DEFAULT NULL,
                              PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                              ) ENGINE=INNODB;");
}

/**
 * This function is called on removal and is used to destroy database schema for the plugin
 */
function extension_delete_customapp()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE `customapp`");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_customapp()
{

}
