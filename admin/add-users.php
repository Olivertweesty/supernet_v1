<?php session_start();
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
   <?php include_once('includes/navbar.php');?>
        <div id="layoutSidenav">
          <?php include_once('includes/sidebar.php');?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Add Users</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Users</li>
                        </ol>
                        <div class="row"><?php
//Code for Registration 
if(isset($_POST['submit']))
{
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $email=$_POST['email'];
    $speed=$_POST['speed'];
    $cost=$_POST['cost'];
    $type=$_POST['type'];
    $ddate=$_POST['ddate'];
    // var_dump($type);
    // die();
    $contact=$_POST['contact'];
$sql=mysqli_query($con,"select id from users where email='$email'");
$row=mysqli_num_rows($sql);
if($row>0)
{
    echo "<script>alert('Email id already exist with another account. Please try with other email id');</script>";
} else{
    $msg=mysqli_query($con,"insert into users(fname,lname,email,contactno,charge,package,type,due_date) values('$fname','$lname','$email','$contact','$cost','$speed','$type','$ddate')");

if($msg)
{
    echo "<script>alert('Registered successfully');</script>";
   
}
}
}
                        ?>
                        <div class="container" style="width:850px;">
<form method="post" name="signup" onsubmit="return checkpass();">

<div class="row mb-3">
<div class="col-md-6">
<div class="form-floating mb-3 mb-md-0">
<input class="form-control" id="fname" name="fname" type="text" placeholder="Enter your first name" required />
<label for="inputFirstName">First name</label>
</div>
</div>
                                                
<div class="col-md-6">
<div class="form-floating">
<input class="form-control" id="lname" name="lname" type="text" placeholder="Enter your last name" required />
 <label for="inputLastName">Last name</label>
</div>
</div>
</div>


<div class="form-floating mb-3">
<input class="form-control" id="email" name="email" type="email" placeholder="phpgurukulteam@gmail.com"/>
<label for="inputEmail">Email address</label>
</div>
 

<div class="form-floating mb-3">
<input class="form-control" id="contact" name="contact" type="text" placeholder="1234567890" required pattern="[0-9]{10}" title="10 numeric characters only"  maxlength="10" required />
<label for="inputcontact">Contact Number</label>
</div>
        

<div class="form-floating mb-3">
  
<select class="form-control" name="speed" required>
<option value=""> Package </option>
<option value="1mbps">1mbps</option>
<option value="3mbps">3mbps</option>
<option value="5mbps">5mbps</option>
<option value="8mbps">8mbps</option>
<option value="10mbps">10mbps</option>
<option value="20">0ther</option>
</select>
</div>
<div class="form-floating mb-3">
  
<select class="form-control" name="cost" required>
<option value=""> Cost</option>
<option value="1000">1000ksh</option>
<option value="1500">1500ksh</option>
<option value="2000">2000ksh</option>
<option value="2500">2500ksh</option>
<option value="3500">3500ksh</option>
<option value="other">0ther</option>
</select>
</div>
<div class="form-floating mb-3">
  
<select class="form-control" name="type" required>
<option value=""> Type</option>
<option value="1">Client</option>
<option value="2">Host</option>
</select>
</div>
     <div class="form-floating mb-3">
<input class="form-control" id="ddate" name="ddate" type="date" placeholder="1234567890"  title="10 numeric characters only"  maxlength="10" required />
<label for="inputcontact">Due Date</label>
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
