<?php

class ImageCoder
{
    public static $supported_types = array (
        'image/gif' => 'gif',
        'image/png' => 'png',
        'image/jpeg' => 'jpeg',
        'image/pjpeg' => 'jpeg',
        'image/bmp' => 'bmp',
        'image/x-ms-bmp' => 'bmp'
    );

    public static function decode($base64)
    {
        $image = null;
        $mime_content_type_info = array();
        preg_match("/data:(.*);base64,/", $base64, $mime_content_type_info);
        if(count($mime_content_type_info) === 2)
        {
            $mime_name = trim($mime_content_type_info[1]);
            if(array_key_exists($mime_name, ImageCoder::$supported_types))
            {
                $base64 = str_replace($mime_content_type_info[0], '', $base64);
                $base64 = str_replace(' ', '+', $base64);
                $image = array (
                    'content' => base64_decode($base64), 
                    'extension' => ImageCoder::$supported_types[$mime_name]
                );
            }
        }
        return $image;
    }

    public static function encode($image)
    {
        $base64 = null;
        if($image)
        {
            $mime_name = mime_content_type($image);
            if(array_key_exists($mime_name, ImageCoder::$supported_types))
            {
                $base64 = base64_encode(file_get_contents($image));
            }
        }
        return $base64;
    }
    
    public static function encode_to_dataURL($image)
    {
        $base64 = ImageCoder::encode($image);
        if($base64)
        {
            $base64 = 'data: ' . mime_content_type($image) . ';base64,' . $base64;
        }

        return $base64;
    }
}

?>