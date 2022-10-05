<?php
require("../includes/config.php");
header("Content-Type: application/json");

$response = '{
    "ResultCode" : 0,
    "ResultDesc": "Accepted"
}';

$mpesaResponse = file_get_contents('php://input');

$logFile = "M_PESAConfirmationResponse.txt";

$jsonMpesaResponse = json_decode($mpesaResponse, true);

$type = $jsonMpesaResponse['TransactionType'];
$transID = $jsonMpesaResponse['TransID'];
$transTime = $jsonMpesaResponse['TransTime'];
$TransAmount = $jsonMpesaResponse['TransAmount'];
$BusinessShortCode = $jsonMpesaResponse['BusinessShortCode'];
$BillRefNumber = $jsonMpesaResponse['BillRefNumber'];
$InvoiceNumber = $jsonMpesaResponse['InvoiceNumber'];
$OrgAccountBalance = $jsonMpesaResponse['OrgAccountBalance'];
$ThirdPartyTransID = $jsonMpesaResponse['ThirdPartyTransID'];
$MSISDN = $jsonMpesaResponse['MSISDN'];
$FirstName = $jsonMpesaResponse['FirstName'];
$MiddleName = $jsonMpesaResponse['MiddleName'];
$LastName = $jsonMpesaResponse['LastName'];

$time = $transTime;
    $time= (string)$time;
    $n_time = $time[0].$time[1].$time[2].$time[3]."-".$time[4].$time[5]."-".$time[6].$time[7]." ".$time[8].$time[9].":".$time[10].$time[11].":".$time[12].$time[13];
    echo $n_time;

$sql = "INSERT INTO mpesa_records(id,transactiontype, transID, transtime, transAmount, businessShortCode, invoiceNumber, OrgAccountBalance, MSISDN, FirstName, LastName) VALUES ('$type','$transID','$n_time','$TransAmount','$BusinessShortCode','$BillRefNumber','$InvoiceNumber','$OrgAccountBalance','$MSISDN','$FirstName','$LastName')";

mysqli_query($con,$sql);


$log = fopen($logFile, "a");

fwrite($log, $mpesaResponse);

fclose($log);

echo $response;