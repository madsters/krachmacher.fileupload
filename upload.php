<!-- UNBEDINGT IN PHP "file_uploads" AKTIVIEREN" -->
<!-- UNBEDINGT IN PHP "file_uploads" AKTIVIEREN" -->
<!-- UNBEDINGT IN PHP "file_uploads" AKTIVIEREN" -->
<!-- UNBEDINGT IN PHP "file_uploads" AKTIVIEREN" -->
<!-- UNBEDINGT IN PHP "file_uploads" AKTIVIEREN" -->
<!-- UNBEDINGT IN PHP "file_uploads" AKTIVIEREN" -->

<style type="text/css">
  html {
    font-family: 'Roboto Mono', monospace;
    text-align: center;
    margin-left: 2em;
    margin-right: 2em;
  }
</style>

<?php
if(isset($_POST['submit'])){

 // Count total files
  $countfiles = count($_FILES['file']['name']);

 // Looping all files
  for($i=0;$i<$countfiles;$i++){
  $filename = $_FILES['file']['name'][$i];

  // Upload file
  move_uploaded_file($_FILES['file']['tmp_name'][$i],'/srv/uploads/'.$filename);
}

echo "Die Dateien wurden hochgeladen. Es geht weiter! <br>";

$wrapperscript = shell_exec('/var/www/html/sh/wrapper.sh');
echo "Ausgabe vom Skript: $wrapperscript";

} else {
	echo "Fehler!";
}


?>
