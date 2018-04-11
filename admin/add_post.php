<?php session_start(); 

	if($_SESSION['email']==false) {
		
	header("Location:_index.php");	
	}

?>
<?php  require "canect.php" ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Add Post</title>
  <script src="ckeditor/ckeditor.js"></script>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <?php include "include/hearer_sidebar.php" ?>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">My Dashboard</li>
      </ol>
   </div>
   <?php
		if(isset($_POST['submit'])){
		extract($_POST);
		$uid = $_SESSION['uid'];
	
		$data = $db->query("INSERT INTO posts VALUES (NULL, '$title', '$cont', '$cate', '$uid', NOW())");
		if($data){
			echo "<script> alert('Your post is successfully insert')</script> ";
			}
		}
	?>
   <div class="container">
   			<form method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-12">
                <label for="exampleInputName">Post Title</label>
                <input class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" 			placeholder="Enter Your Post Title" name="title" required>
              </div>
              <div class="col-md-12">
                <label for="exampleInputLastName">Post Contain</label>
                <textarea class= "form-control" aria-describedby="nameHelp" 
                placeholder="Enter Your Post" rows="5" id= "editor1" name="cont" required>
                </textarea>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Post Category</label>
            <?php
	$sql = $db->query("SELECT * FROM category");
	?>
            <select class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cate" required>
            
            <option value="" hidden="">--Select Categary --</option>
           <?php while($data= $sql->fetch_array()){ ?>
            <option value="<?php echo $data["id"]; ?>"><?php echo $data["name"]; ?></option>
            <?php } ?>
            
            </select>
            
          </div>
          
          
          <input type="submit" name="submit" value="INSERT" class="btn btn-success"> 
        </form>
   </div> 
   </div>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <?php include "include/footer.php" ?>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
    
     
    <script>CKEDITOR.replace("editor1"); </script>
  </div>
</body>

</html>
