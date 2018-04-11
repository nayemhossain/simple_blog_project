<?php  require "canect.php" ?>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<?php include "include/header.php" ?>
    <!-- Page Content -->
    <div class="container">

        <div class="row">
        <?php
//CREAT DB OBJECT
	$id=$_GET['categories'];
	$sql = $db->query("SELECT * FROM posts WHERE categories =".$id);
	
	
	//create Query
$query = "SELECT * FROM categories";
//$categories=$db->select($query);
?>

            <!-- Blog Entries Column -->
            <div class="col-md-9">

                <h1 class="page-header">
                    Page Heading
                    <small>Secondary Text</small>
                </h1>
                <?php 
if($sql):
?>
                <?php while($data = $sql->fetch_array()){ ?>
				
                <h2>
                    <a href="<h2 class="blog-post-title""><?php echo $data["title"]; ?></a>
                </h2>
                
                <p><span class="glyphicon glyphicon-time"></span><?php echo $data["date"]; ?></p>
                <!--<hr>
                <img class="img-responsive" src="http://placehold.it/900x300" alt="">
                <hr>-->
                <p><?php echo $data["body"]; ?></p>
                <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                <?php } ?>
                
              <?php 
	else:
	?>
    <p>There is no posts yet.</p>
    <?php endif ;?>

                <!-- Pager -->
                <ul class="pager">
                    <li class="previous">
                        <a href="#">&larr; Older</a>
                    </li>
                    <li class="next">
                        <a href="#">Newer &rarr;</a>
                    </li>
                </ul>

            </div>
            <?php include "include/sidebar.php" ?>
			<?php include "include/footer.php" ?>  
            <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
  
