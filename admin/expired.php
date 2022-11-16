<?php
include_once('../includes/config.php');

$today = date("Y-m-d");
$query = "SELECT fname,lname,email FROM users WHERE '$today' > DATE(due_date)";
$response = mysqli_query($con,$query);

$user = array();
while($row=mysqli_fetch_array($response)){
    array_push($user,$row['fname']);
}
echo json_encode($user);

?>