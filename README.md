# Web-Fileuploader and Merger for Audiobookbox
Made for Used radiod, created by Bob Rathbone. (Credits here)[https://bobrathbone.com/raspberrypi/pi_internet_radio.html]

## What it does
When File is uploaded the MP3s scanned for ID3 Tags. Then the files will be merged with ffmpeg, then renamed and the ID3 Tags will be added to the merged file. In the end the files will be copied to an other location and the old files will be deleted. That means this is NOT a merger or converter. It's just an uploader.

-------
## Installation
This is made for Raspberry Pi Zero W, but works on all linux machines. 

First Download apache2 and php
```bash
sudo apt-get install apache2 php ffmpeg
```

## Attention
In the PHP-File in line 33: This is just the standard apache2 path. When you have your own path you have to adjust this.
Also in both shell scripts there just standard paths I thought they're good. You can edit it for yourself.
