<?php

require_once $_SERVER['DOCUMENT_ROOT'].'/scripts/classes/ImageCoder.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/scripts/classes/OldFileDeleter.php';

if ($_SERVER["REQUEST_METHOD"] === "POST" &&
    isset($_POST["inputText"]) &&
    $_POST["inputText"]) 
{
    try
    {
        // Delete old files
        $deleter = new OldFileDeleter($_SERVER['DOCUMENT_ROOT'].'/public/', 86400);
        $deleter->clean();
    }
    catch(Exception $e) { }

    $outputJson = json_encode(array());
    try
    {
        $decodedImageInfo = ImageCoder::decode($_POST["inputText"]);
        if($decodedImageInfo)
        {
            // Create empty file with unique name in temporary dir
            $imgFileName = '/public/'.strval(date_timestamp_get(date_create())).'_'.strval(rand(1000, 9999)).'.'.$decodedImageInfo['extension'];
            $imgFullFileName = $_SERVER['DOCUMENT_ROOT'].$imgFileName;
            // Load image data to created file
            file_put_contents($imgFullFileName, $decodedImageInfo['content']);

            $imgFileName = 'http://'.$_SERVER['SERVER_NAME'].$imgFileName;
            $outputJson = json_encode(array('decodedImage' => $imgFileName));
        }
    }
    catch(Exception $e)
    {
        $outputJson = json_encode(array());
    }
    echo($outputJson);
}

?>