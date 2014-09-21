<?php

class ImageFilter
{
    // Maximum file size in bytes. Default is 32MB.
    public static $max_file_size = 33554432;

    public static function is_allowed($image_file_location, $is_remoted = False)
    {
        $is_allowed = False;
        try
        {
            $file_size = 0;
            if($is_remoted)
            {
                $file_size = ImageFilter::retrieve_remote_file_size($image_file_location);
            }
            else
            {
                $file_size = filesize($image_file_location);
            }
            if($file_size > 0
                && $file_size <= ImageFilter::$max_file_size
                && getimagesize($image_file_location))
            {
                $is_allowed = True;
            }
        }
        catch (Exception $e)
        {
            $is_allowed = False;
        }
        return $is_allowed;
    }

    private static function retrieve_remote_file_size($url){
         $ch = curl_init($url);

         curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
         curl_setopt($ch, CURLOPT_HEADER, TRUE);
         curl_setopt($ch, CURLOPT_NOBODY, TRUE);

         $data = curl_exec($ch);
         $size = curl_getinfo($ch, CURLINFO_CONTENT_LENGTH_DOWNLOAD);

         curl_close($ch);
         return $size;
    }
}

?>