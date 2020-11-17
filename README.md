# Web-Fileuploader and Merger for Audiobookbox
Made for uploading audioboosk to radiod, created by Bob Rathbone. (Credits here)[https://bobrathbone.com/raspberrypi/pi_internet_radio.html]

## What it does
When the file was uploaded it gets scanned for ID3 Tags. Then the files will be merged with ffmpeg, then renamed and the ID3 Tags will be added to the merged file. In the end the files will be copied to an other location and the old files will be deleted. This means this is NOT a converter. It's just an uploader and merger.

-------
## Installation
This is made for Raspberry Pi Zero W, but works on all linux machines. 

First Download apache2 and php
```bash
sudo apt-get install apache2 php ffmpeg
```

Then you have to activate file_uploads in php-settings or it won't work.
In Cause of large audio files you have to set max-file-size up. (My recommendation is 1000M)

## Attention
In the PHP-File in line 33: This is just the standard apache2 path. When you have your own path you have to adjust this.
Also in both shell scripts there just standard paths I thought they're good. You can edit it for yourself.
