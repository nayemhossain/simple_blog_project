<?php include "include/header.php" ?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Home - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/blog-home.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/custom.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="bg-dark">
	<div class="container">
    <div class="row">
    <div class="col-md-8 col-xs-offset-2">
    <div id="mainform">
    <div class="jumbotron">
    <h2>Contact with us</h2>
    </div>
    <form id="form">
    <h3>Contact Form</h3>
<p id="returnmessage"></p>

    	<div class="form-group">
    	<label>Name: <span style="color:red">*</span></label>
        <input type="text" class="form-control" placeholder="Enter Your Name" id="name">
        </div>
        
        <div class="form-group">
    	<label>Email: <span style="color:red">*</span></label>
        <input type="text" class="form-control" placeholder="Enter Your Email" id="email">
        </div>
        
        <div class="form-group">
    	<label>Phone: <span style="color:red">*</span></label>
        <input type="text" class="form-control" placeholder="Enter Your Phone" id="contact">
        </div>
        
        <div class="form-group">
    	<label>Message</label>
        <textarea class="form-control" placeholder="Enter Your Message" id="message"></textarea>
        </div>
        <input type="button" class="btn btn-success" value="sent" id="submit">
        
        </form>
        </div>
        </div>
    </div>
  <?php include "include/footer.php" ?>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>


</html>
   
