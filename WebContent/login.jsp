<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login</title>

<!--JS-->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="frameworks/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.js"></script>
    <script src="frameworks/imagesloaded-master/imagesloaded.js"></script>
    <script src="//vjs.zencdn.net/4.3/video.js"></script>
    <script src="frameworks/bigVid/lib/bigvideo.js"></script>
    <script type="text/javascript" src="js/script.js"></script>

    <!--CSS-->
    <link href="frameworks/bigVid/css/bigvideo.css" rel="stylesheet">
    <link href="style/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="style/bootstrap/js/bootstrap.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="style/style.css" rel="stylesheet">
    <link href="style/login.css" rel="stylesheet">
</head>
<body>
<div class="container"> 
 <div class="navbar navbar-default">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="brandHolder">
          <a class="navbar-brand" href="#"> <img src="assets/mascot.png" class="mediumPic" alt=""> Bird's Eye View</a>
        </div>
      </div>
      <div class="navbar-collapse collapse navbar-inverse-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Active</a></li>
          <li><a href="#">Link</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li><a href="#">Separated link</a></li>
              <li><a href="#">One more separated link</a></li>
            </ul>
          </li>
        </ul>
        <form class="navbar-form navbar-left">
          <input type="text" class="form-control col-lg-8" placeholder="Search">
        </form>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Link</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li class="divider"></li>
              <li><a href="#">Separated link</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div> <!--END NAVBAR-->
        <div class="col-lg-12">
                <div class="bs-component login">
                    <a href="SignIn"><button type="button" class="btn btn-primary signin"><img src="assets/twitterWhite.png" class="smallPic" alt=""> Login with Twitter!</button></a>
                </div>

        </div>
</div> 
    <div class="main">

        <div id="tips" class="space">
           
        </div>
    </div>
    
    <!-- Demo -->
    <script>
        var BV;
        $(function() {
            
            // initialize BigVideo
            BV = new $.BigVideo();
            BV.init();
            BV.show('assets/drone.mp4',{ambient:true});

            // Playlist button click starts video
            $('.playlist-btn').on('click', function(e) {
                e.preventDefault();
                BV.show($(this).attr('href'));
            })

            // Video Play/Pause toggle
            $('#video-toggle').on('click', function(e) {
                if (this.checked)   BV.getPlayer().play();
                else                BV.getPlayer().pause();
            })

            // set up navigation
            $('.nav-link').on('click',function(e){
                e.preventDefault();
                scrollToSection($(this).attr('href'));
            })

            function scrollToSection(id) {
                $('body,html').animate({scrollTop: $(id).offset().top - 50}, 400);
            }
        });
    </script>
</body>
</html>