<?php

class OldFileDeleter
{
    public function OldFileDeleter($path, $storage_time)
    {
        $this->path = $path[strlen($path)-1]=='/' ? $path:($path.'/');
        $this->storage_time = $storage_time;
    }

    public function clean()
    {
        $files = scandir($this->path);
        $current_timestamp = date_timestamp_get(date_create());
        foreach($files as $key=>$file)
        {
            if($file[0]!='.')
            {
                $file_creation_info = explode('_', $file);
                if(isset($file_creation_info[0]) && $file_creation_info[0])
                {
                    $file_creation_time = $file_creation_info[0];

                    if(($current_timestamp - $file_creation_time) >= $this->storage_time)
                    {
                        unlink($this->path.$file);
                    }
                }
            }
        }
    }
}

?>