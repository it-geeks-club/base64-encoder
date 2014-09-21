<?php

require_once($_SERVER['DOCUMENT_ROOT'].'/scripts/configs.inc.php');

if($_SERVER['REQUEST_METHOD'] === 'GET') {
    $smarty = initSmarty();
    $page_to_display = 'about_base64';

    if(isset($_GET['page']) && strtolower($_GET['page'])) {
        $_GET['page'] = trim($_GET['page']);
        $pages = array(
            'about_base64',
            'encode_text',
            'decode_text',
            'encode_image',
            'decode_image',
            'usages_by_programmers',
            'api',
            'site_info'
        );
        if(in_array($_GET['page'], $pages)) {
            $page_to_display = $_GET['page'];
        } else {
            $page_to_display = 'error_404';
        }
    }

    $smarty->display($page_to_display.'.tpl');
}

?>