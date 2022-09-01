<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<?php require_once('config.php'); ?>
 <?php require_once('inc/header.php') ?>
  <body class="hold-transition layout-top-nav" >
     <?php $page = isset($_GET['page']) ? $_GET['page'] : 'portal';  ?>
     <?php require_once('inc/topBarNav.php') ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <title>Blog</title>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <img style="height:250px;" class="card-img" src="assets/img/cox.jpg" alt="Bologna">
        <div class="card-img-overlay">
          <a href="cox.php" class="btn btn-light btn-sm">Read More</a>
        </div>
        <div class="card-body">
          <h4 class="card-title">Cox's Bazar Blog News</h4>
          <small class="text-muted cat">
            <i class="far fa-clock text-info"></i> 30 minutes
            <i class="fas fa-users text-info"></i> 4 portions
          </small>
          <p class="card-text">Sitting and sipping your favourite drink and waiting for the sunset to witness the radiant hue of the sea</p>
        </div>
        <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
          <div class="views">Oct 20, 12:45PM
          </div>
          <div class="stats">
           	<i class="far fa-eye"></i> 1347
            <i class="far fa-comment"></i> 12
          </div>
           
        </div>
      </div>
    </div>

     <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <img style="height:250px;" class="card-img" src="assets/img/ban.png" alt="Bologna">
        <div class="card-img-overlay">
          <a href="ban.php" class="btn btn-light btn-sm">Read More</a>
        </div>
        <div class="card-body">
          <h4 class="card-title">Bandarban tourist spot News</h4>
          <small class="text-muted cat">
            <i class="far fa-clock text-info"></i> 30 minutes
            <i class="fas fa-users text-info"></i> 4 portions
          </small>
          <p class="card-text">South Asian country Bangladesh is blessed with natural beauty and can also be a great destination for traveling</p>
        </div>
        <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
          <div class="views">Oct 20, 12:45PM
          </div>
          <div class="stats">
           	<i class="far fa-eye"></i> 1347
            <i class="far fa-comment"></i> 12
          </div>
           
        </div>
      </div>
    </div>

    
    <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <img style="height:250px;" class="card-img" src="assets/img/sy.png" alt="Bologna">
        <div class="card-img-overlay">
          <a href="sylhet.php" class="btn btn-light btn-sm">Read More</a>
        </div>
        <div class="card-body">
          <h4 class="card-title">A visitor guide to greater Sylhet</h4>
          <small class="text-muted cat">
            <i class="far fa-clock text-info"></i> 30 minutes
            <i class="fas fa-users text-info"></i> 4 portions
          </small>
          <p class="card-text">Exelent poin I have visited.my friends was with me in this tour frist of all we were visited luvachora</p>
        </div>
        <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
          <div class="views">Oct 20, 12:45PM
          </div>
          <div class="stats">
           	<i class="far fa-eye"></i> 1347
            <i class="far fa-comment"></i> 12
          </div>
           
        </div>
      </div>
    </div>

    
    <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <img style="height:250px;" class="card-img" src="assets/img/chittagong.png" alt="Bologna">
        <div class="card-img-overlay">
          <a href="chittagong.php" class="btn btn-light btn-sm">Read More</a>
        </div>
        <div class="card-body">
          <h4 class="card-title">Things to Do in Chittagong City</h4>
          <small class="text-muted cat">
            <i class="far fa-clock text-info"></i> 30 minutes
            <i class="fas fa-users text-info"></i> 4 portions
          </small>
          <p class="card-text">Many street vendors sell ice creams and drinks but don't miss the chance to taste the area's specialitya</p>
        </div>
        <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
          <div class="views">Oct 20, 12:45PM
          </div>
          <div class="stats">
           	<i class="far fa-eye"></i> 1347
            <i class="far fa-comment"></i> 12
          </div>
           
        </div>
      </div>
    </div>

    
    <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <img style="height:250px;" class="card-img" src="assets/img/ran.png" alt="Bologna">
        <div class="card-img-overlay">
          <a href="ran.php" class="btn btn-light btn-sm">Read More</a>
        </div>
        <div class="card-body">
          <h4 class="card-title">Travel to rangamati</h4>
          <small class="text-muted cat">
            <i class="far fa-clock text-info"></i> 30 minutes
            <i class="fas fa-users text-info"></i> 4 portions
          </small>
          <p class="card-text">You can come to Rangamati by bus from Chittagong there is two direct bus services.</p>
        </div>
        <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
          <div class="views">Oct 20, 12:45PM
          </div>
          <div class="stats">
           	<i class="far fa-eye"></i> 1347
            <i class="far fa-comment"></i> 12
          </div>
           
        </div>
      </div>
    </div>

    
    <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <img style="height:250px;" class="card-img" src="assets/img/khulna.png" alt="Bologna">
        <div class="card-img-overlay">
          <a href="khulna.php" class="btn btn-light btn-sm">Read More</a>
        </div>
        <div class="card-body">
          <h4 class="card-title">The Best Attractions In Khulna</h4>
          <small class="text-muted cat">
            <i class="far fa-clock text-info"></i> 30 minutes
            <i class="fas fa-users text-info"></i> 4 portions
          </small>
          <p class="card-text">Khulna Tourist Spot: A district in Bangladesh’s southwestern part</p>
        </div>
        <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
          <div class="views">Oct 20, 12:45PM
          </div>
          <div class="stats">
           	<i class="far fa-eye"></i> 1347
            <i class="far fa-comment"></i> 12
          </div>
           


          
        </div>
      </div>
    </div>



        
    <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <img style="height:250px;" class="card-img" src="assets/img/comilla.png" alt="Bologna">
        <div class="card-img-overlay">
          <a href="cumilla.php" class="btn btn-light btn-sm">Read More</a>
        </div>
        <div class="card-body">
          <h4 class="card-title">News – Welcome to Aid Comilla</h4>
          <small class="text-muted cat">
            <i class="far fa-clock text-info"></i> 30 minutes
            <i class="fas fa-users text-info"></i> 4 portions
          </small>
          <p class="card-text">objective: (1) Rehabilitation and resettlement of the victims from disasters and</p>
        </div>
        <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
          <div class="views">Oct 20, 12:45PM
          </div>
          <div class="stats">
           	<i class="far fa-eye"></i> 1347
            <i class="far fa-comment"></i> 12
          </div>
           


          
        </div>
      </div>
    </div>
  </div>
</div>



<style>
body {
  padding: 2rem 0rem;
}
.card {
    position: relative;
    top:65px;
}
.card-img {
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;
}

.card-title {
  margin-bottom: 0.3rem;
}

.cat {
  display: inline-block;
  margin-bottom: 1rem;
}

.fa-users {
  margin-left: 1rem;
}

.card-footer {
  font-size: 0.8rem;
}
#mainNav.navbar-shrink{
  background-color: #001244;
}
</style>


</body>

</html>