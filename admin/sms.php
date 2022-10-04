<?php session_start();
error_reporting(0);
include_once('../includes/config.php');
if (strlen($_SESSION['adminid']==0)) {
  header('location:logout.php');
  } else{

    
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Dashboard | SuperNet </title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="../css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <?php
                        if(isset($_POST['submit']))

    
   


{
$tid="Dear  you have successfully registered to KenyanRides.Thankyou. ";
$itd="0726312315";
{
@$phone=$_POST['phone'];
@$message=$_POST['message'];
 $fname=$_POST['fname'];
    $message=$_POST['messo'];
    $mobile=$_POST['pnumber'];



 // Be sure to include the file you've just downloaded
    require_once('AfricasTalkingGateway.php');
    // Specify your login credentials
    $username   = "progressive";
    $apikey     = "0505b3031a5d6c4e52c5b291d93b725579a4ce18d4ead37a5401408f14e65629";
    // NOTE: If connecting to the sandbox, please use your sandbox login credentials
    // Specify the numbers that you want to send to in a comma-separated list
    // Please ensure you include the country code (+254 for Kenya in this case)
     $from="pro-utility";
    $recipients = $mobile;
    // And of course we want our recipients to know what we really do
    $message    = $message;
    // Create a new instance of our awesome gateway class
    $gateway    = new AfricasTalkingGateway($username, $apikey);
    // NOTE: If connecting to the sandbox, please add the sandbox flag to the constructor:
    /*************************************************************************************
                 ****SANDBOX****
    $gateway    = new AfricasTalkingGateway($username, $apiKey, "sandbox");
    **************************************************************************************/
    // Any gateway error will be captured by our custom Exception class below, 
    // so wrap the call in a try-catch block
    try 
    { 
      // Thats it, hit send and we'll take care of the rest. 
      $results = $gateway->sendMessage($recipients, $message ,$from);
                
      foreach($results as $result) {
        // status is either "Success" or "error message" 
       
      }
    }
    catch ( AfricasTalkingGatewayException $e )
    {
      echo "Encountered an error while sending: ".$e->getMessage();
    }

                
$msg=mysqli_query($con,"insert into sentsms(number,message) values('$mobile','$message')");
if($msg)
{
    echo "<script>alert('Sms sent successfully');</script>";
   
}
  } 
  }
                        ?>
   <?php include_once('includes/navbar.php');?>
        <div id="layoutSidenav">
          <?php include_once('includes/sidebar.php');?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Send SMS</h1>
                        <ol class="breadcrumb mb-4">
                        </ol>
                        <div class="row">
                        <div class="container" style="width:850px;">
<form method="post" name="signup" onsubmit="return checkpass();">

<div class="row mb-3">

                                                
<div class="col-md-6">
<div class="form-floating">
<input class="form-control" id="messo" name="messo" type="text" placeholder="Enter message" required />
 <label for="inputLastName">Message</label>
</div>
</div>
</div>

 

<!-- <div class="form-floating mb-3">
<input class="form-control" id="mobile" name="mobile" type="text" placeholder="0726312315" required pattern="[0-9]{10}" title="10 numeric characters only"  maxlength="10" required />
<label for="inputcontact">Contact Number</label>
</div> -->
        

<div class="col-md-6">

<select class="form-control" name="pnumber">
<option value="">Select number</option>
<?php $ret=mysqli_query($con,"select * from users");
                              $cnt=1;
                              while($row=mysqli_fetch_array($ret))
                              {?> 
<option required value="<?php echo $row['contactno'];?>"><?php echo $row['contactno'] ;echo $row['fname'] ; echo $row['posting_date'] ; ?></option>
<?php } ?>
                 
                </select>
              </div>
             


                                            

<div class="mt-4 mb-0">
<div class="d-grid"><button type="submit" class="btn btn-primary btn-block" name="submit">Create Account</button></div>
</div>
                                        </form>
                                        </div>
                        </div>
                   
                      
                    </div>
                </main>
             <?php include_once('../includes/footer.php'); ?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="../js/datatables-simple-demo.js"></script>
    </body>
</html>
<?php } ?>
