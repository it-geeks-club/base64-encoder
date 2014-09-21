<?php

require_once $_SERVER['DOCUMENT_ROOT'].'/scripts/classes/ImageCoder.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/scripts/classes/ImageFilter.php';

if ($_SERVER["REQUEST_METHOD"] === "POST")
{
    $outputJson = json_encode(array());
    try
    {
        if(isset($_FILES['imageFile'])
            && $_FILES['imageFile']
            && ImageFilter::is_allowed($_FILES['imageFile']['tmp_name']))
        {
            $encodedImage = ImageCoder::encode($_FILES['imageFile']['tmp_name']);
            $encodedImageToDataURL = ImageCoder::encode_to_dataURL($_FILES['imageFile']['tmp_name']);
            
            $outputJson = json_encode(array('encodedImage' => $encodedImage,
                                            'encodedImageToDataURL' => $encodedImageToDataURL));
        }
        elseif(isset($_POST['imageUrl'])
            && $_POST['imageUrl']
            && ImageFilter::is_allowed($_POST['imageUrl'], True))
        {
            // Create empty file with unique name in temporary dir
            $imgFileName = tempnam($_SERVER['DOCUMENT_ROOT'].'/temp', 'img_to_encode_');
            // Load image data to created file
            file_put_contents($imgFileName, file_get_contents($_POST['imageUrl']));
            $encodedImage = ImageCoder::encode($imgFileName);
            $encodedImageToDataURL = ImageCoder::encode_to_dataURL($imgFileName);

            $outputJson = json_encode(array('encodedImage' => $encodedImage,
                                            'encodedImageToDataURL' => $encodedImageToDataURL));

            unlink($imgFileName);
        }
    }
    catch(Exception $e)
    {
        $outputJson = json_encode(array());
    }
    echo($outputJson);
}

?>