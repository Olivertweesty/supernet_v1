<?php
define('DB_SERVER','localhost');
define('DB_USER','progressive_supernet');
define('DB_PASS' ,'@supernet2022!');
define('DB_NAME', 'progressive_supernet');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);

// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }

?>

