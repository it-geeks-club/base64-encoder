<?php

class TextCoder
{
    public static function decode($base64)
    {
        $text = base64_decode($base64);

        return $text;
    }

    public static function encode($text)
    {
        $base64 = base64_encode($text);

        return $base64;
    }
}

?>