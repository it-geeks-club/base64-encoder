<?php

require_once $_SERVER['DOCUMENT_ROOT'].'/scripts/classes/TextCoder.php';

if ($_SERVER["REQUEST_METHOD"] === "POST" &&
    isset($_POST["inputText"]) && $_POST["inputText"])
{
    $outputJson = json_encode(array());
    try
    {
        $encodedText = TextCoder::encode($_POST["inputText"]);
        $outputJson = json_encode(array('encodedText' => $encodedText));
    }
    catch(Exception $e)
    {
        $outputJson = json_encode(array());
    }
    echo($outputJson);
}

?>