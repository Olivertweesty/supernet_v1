<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'supernet');

global $con,$invoiceUserTable ;

$host  = 'localhost';
$user  = 'progressive_supernet';
$password   = "@supernet2022!";
$database  = "progressive_supernet";   
$invoiceUserTable = 'invoice_user';	
$invoiceOrderTable = 'invoice_order';
$invoiceOrderItemTable = 'invoice_order_item';
$dbConnect = false;


$sms_username   = "progressive";
$sms_apikey     = "0505b3031a5d6c4e52c5b291d93b725579a4ce18d4ead37a5401408f14e65629";

$sms_from="pro-utility";


$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);

// Check connection
if ($con == FALSE){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>

