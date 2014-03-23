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
    <script src="frameworks/bigVid/lib/bigvideo.js"></script>
    <script type="text/javascript" src="js/script.js"></script>

    <!--CSS-->
    <link href="frameworks/bigVid/css/bigvideo.css" rel="stylesheet">
    <link href="style/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="style/bootstrap/js/bootstrap.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="style/style.css" rel="stylesheet">
</head>
<body>

    <div id="big-video-wrap"><div id="big-video-vid" class="video-js vjs-default-skin vjs-controls-disabled vjs-has-started vjs-user-active vjs-playing" style="width: 100%; height: auto; display: block; top: -50px; left: 0px;"><video id="big-video-vid_html5_api" class="vjs-tech" preload="auto" data-setup="{}" webkit-playsinline="" style="position: absolute; width: 1440px; height: auto;" autoplay="" src="assets/drone(720p).mp4"></video><div></div><div class="vjs-poster" tabindex="-1" style="display: none;"></div><div class="vjs-text-track-display"></div><div class="vjs-loading-spinner" style="display: none;"></div><div class="vjs-big-play-button" aria-live="polite" tabindex="0" aria-label="play video"><span aria-hidden="true"></span></div><div class="vjs-control-bar"><div class="vjs-play-control vjs-control  vjs-playing" aria-live="polite" tabindex="0"><div class="vjs-control-content"><span class="vjs-control-text">Pause</span></div></div><div class="vjs-current-time vjs-time-controls vjs-control"><div class="vjs-current-time-display" aria-live="off"><span class="vjs-control-text">Current Time </span>0:14</div></div><div class="vjs-time-divider"><div><span>/</span></div></div><div class="vjs-duration vjs-time-controls vjs-control"><div class="vjs-duration-display" aria-live="off"><span class="vjs-control-text">Duration Time </span>0:46</div></div><div class="vjs-remaining-time vjs-time-controls vjs-control"><div class="vjs-remaining-time-display" aria-live="off"><span class="vjs-control-text">Remaining Time </span>-0:31</div></div><div class="vjs-progress-control vjs-control"><div aria-valuenow="31.72" aria-valuemin="0" aria-valuemax="100" tabindex="0" class="vjs-progress-holder vjs-slider" aria-label="video progress bar" aria-valuetext="0:14"><div class="vjs-load-progress" style="width: 100%;"><span class="vjs-control-text">Loaded: 0%</span></div><div class="vjs-play-progress" style="width: 50%;"><span class="vjs-control-text">Progress: 0%</span></div><div class="vjs-seek-handle vjs-slider-handle" style="left: 0%;"><span class="vjs-control-text">00:00</span></div></div></div><div class="vjs-fullscreen-control vjs-control " aria-live="polite" tabindex="0"><div class="vjs-control-content"><span class="vjs-control-text">Fullscreen</span></div></div><div class="vjs-volume-control vjs-control"><div aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" tabindex="0" class="vjs-volume-bar vjs-slider" aria-label="volume level" aria-valuetext="0%"><div class="vjs-volume-level" style="width: 50%;"><span class="vjs-control-text"></span></div><div class="vjs-volume-handle vjs-slider-handle" style="left: 0%;"><span class="vjs-control-text">00:00</span></div></div></div><div class="vjs-mute-control vjs-control vjs-vol-0" aria-live="polite" tabindex="0"><div><span class="vjs-control-text">Mute</span></div></div><div class="vjs-subtitles-button vjs-menu-button vjs-control " aria-live="polite" tabindex="0" aria-haspopup="true" role="button" aria-label="Subtitles Menu" style="display: none;"><div class="vjs-control-content"><span class="vjs-control-text">Subtitles</span></div><div class="vjs-menu"><ul class="vjs-menu-content"><li class="vjs-menu-item vjs-selected" aria-live="polite" tabindex="0" aria-selected="true">subtitles off</li></ul></div></div><div class="vjs-captions-button vjs-menu-button vjs-control " aria-live="polite" tabindex="0" aria-haspopup="true" role="button" aria-label="Captions Menu" style="display: none;"><div class="vjs-control-content"><span class="vjs-control-text">Captions</span></div><div class="vjs-menu"><ul class="vjs-menu-content"><li class="vjs-menu-item vjs-selected" aria-live="polite" tabindex="0" aria-selected="true">captions off</li></ul></div></div><div class="vjs-chapters-button vjs-menu-button vjs-control " aria-live="polite" tabindex="0" aria-haspopup="true" role="button" aria-label="Chapters Menu" style="display: none;"><div class="vjs-control-content"><span class="vjs-control-text">Chapters</span></div><div class="vjs-menu"><ul class="vjs-menu-content"></ul><li class="vjs-menu-title">Chapters</li></div></div></div></div></div>

    <div class="container">
        <div class="navbar navbar-default">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Bird's Eye View</a>
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
                  <div class="panel login panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title"><a href="SignIn">Login with Twitter!</a></h3>
                    </div>
                  </div>
                </div>
        </div>
    </div>
</body>
</html>