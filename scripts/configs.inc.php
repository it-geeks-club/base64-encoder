<?php

define("__SITEPATH__", $_SERVER['DOCUMENT_ROOT']);

require_once(__SITEPATH__.'/smarty/libs/Smarty.class.php');

function initSmarty() {
    $smarty = new Smarty();
    $smarty->setTemplateDir(__SITEPATH__.'/smarty/templates');
    $smarty->setCompileDir(__SITEPATH__.'/smarty/templates_c');
    $smarty->setCacheDir(__SITEPATH__.'/smarty/cache');
    $smarty->setConfigDir(__SITEPATH__.'/smarty/configs');
    return $smarty;
}

?>