<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<?php require_once('config.php'); ?>
 <?php require_once('inc/header.php') ?>
  <body class="hold-transition layout-top-nav" >
     <?php $page = isset($_GET['page']) ? $_GET['page'] : 'portal';  ?>
     <?php require_once('inc/topBarNav.php') ?>
     <?php 
        if(!file_exists($page.".php") && !is_dir($page)){
            include '404.html';
        }else{
          if(is_dir($page))
            include $page.'/index.php';
          else
            include $page.'.php';

        }
      ?>
       <script>
        $(function(){
          if($('header.masthead').lengt <= 0)
            $('#mainNav').addClass('navbar-shrink')
        })
      </script>

      <div class="row">
        <div class="col-md-12">
        <div class="google-map">
        <iframe style="width:100%" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3746840.952815596!2d88.10068738205693!3d23.495631769977344!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30adaaed80e18ba7%3A0xf2d28e0c4e1fc6b!2sBangladesh!5e0!3m2!1sen!2sbd!4v1660901941969!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        </div>
      </div>
      <?php require_once('inc/footer.php') ?>
      <div class="modal fade text-dark" id="confirm_modal" role='dialog'>
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title">Confirmation</h5>
      </div>
      <div class="modal-body">
        <div id="delete_content"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id='confirm' onclick="">Continue</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade text-dark rounded-0" id="uni_modal" role='dialog'>
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
      <div class="modal-content rounded-0">
        <div class="modal-header">
        <h5 class="modal-title"></h5>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id='submit' onclick="$('#uni_modal form').submit()">Save</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade text-dark" id="uni_modal_right" role='dialog'>
    <div class="modal-dialog modal-full-height  modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="fa fa-arrow-right"></span>
        </button>
      </div>
      <div class="modal-body">
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade text-dark" id="viewer_modal" role='dialog'>
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
              <button type="button" class="btn-close" data-dismiss="modal"><span class="fa fa-times"></span></button>
              <img src="" alt="">
      </div>
    </div>
  </div> 

  <style>
    header.masthead .container {
    background: #00023a29;
    border-radius: 161px;
}
.btn-primary {
    color: #fff;
    background-color: #001244;
    border-color: #ffffff;
}
#mainNav .navbar-brand{
  color: #fff;
}
.btn-warning{
  color: #fff;
    background-color: #001244;
    border-color: #ffffff;
}
#mainNav.navbar-shrink{
  background-color: #001244;
}
.bg-dark{
  background-color: #001244;
}
  </style>
  </body>
</html>
