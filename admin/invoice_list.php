<html>
    
<?php 
session_start();
include('invoice.php');
?> 
<head>
        <title>Invoice System</title>
        <script src="js/invoice.js"></script>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Dashboard | Registration and Login System </title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="../css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>  
        <link href="css/style.css" rel="stylesheet">
</head>
<body>
      <?php include_once('includes/navbar.php');?>

      <div id="layoutSidenav">
          <?php include_once('includes/sidebar.php');?>
            <div id="layoutSidenav_content">


            <div class="container">		
	  
                    <?php include('menu.php');?>
                    
                      <table id="data-table" class="table table-condensed table-hover table-striped">
                        <thead>
                          <tr>
                            <th>Invoice No.</th>
                            <th>Customer Name</th>
                            <th>Create Date</th>
                            <th>Total</th>
                            <th>Print</th>
                            <th>Edit</th>
                            <th>Delete</th>
                          </tr>
                        </thead>
                        <?php		
                        $invoiceList = getInvoiceList();
                        foreach($invoiceList as $invoiceDetails){
                      $invoiceDate = date("d/M/Y, H:i:s", strtotime($invoiceDetails["order_date"]));
                            echo '
                              <tr>
                                <td>'.$invoiceDetails["order_id"].'</td>
                                <td>'.$invoiceDetails["order_receiver_name"].'</td>
                                <td>'.$invoiceDate.'</td>
                                <td>$'.$invoiceDetails["order_total_after_tax"].'</td>
                                <td><a href="print_invoice.php?invoice_id='.$invoiceDetails["order_id"].'" title="Print Invoice"><button class="btn btn-primary btn-sm"><i class="fa fa-print"></i></button></a></td>
                                <td><a href="edit_invoice.php?update_id='.$invoiceDetails["order_id"].'"  title="Edit Invoice"><button class="btn btn-success btn-sm"><i class="fa fa-edit"></i></button></a></td>
                                <td><a href="delete-invoice.php?order_id='.$invoiceDetails['order_id'].'" title="Delete Invoice"><button class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></a></td>
                              </tr>
                            ';
                        }       
                        ?>
                      </table>	
                </div>


            </div>
      </div>
		
<?php include_once('../includes/footer.php'); ?>
</body>
</html>