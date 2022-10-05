<?php
include_once('../../includes/config.php');

$sql = "CREATE TABLE mpesa_records (
                        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        transactiontype VARCHAR(30) NOT NULL,
                        transID VARCHAR(30) NOT NULL,
                        transtime VARCHAR(30),
                        transAmount VARCHAR(30),
                        businessShortCode VARCHAR(30),
                        invoiceNumber VARCHAR(30),
                        OrgAccountBalance VARCHAR(30),
                        MSISDN VARCHAR(30),
                        FirstName VARCHAR(30),
                        LastName VARCHAR(30)
    )";

$res = mysqli_query($con,$sql);
if ($res === TRUE) {
    echo "Table mpesa_records created successfully";
  } else {
    echo "Error creating table: ".mysqli_error($con);
  }

?>