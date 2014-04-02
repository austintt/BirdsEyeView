<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html lang="en" ng-app="birdsEye">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <title>Bird's Eye View</title>

    <!--JS-->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="frameworks/angular.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>

    <!--CSS-->
    <link href="style/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="style/bootstrap/js/bootstrap.min.js"></script>
    <link href="style/style.css" rel="stylesheet">
    
</head>
<body ng-controller="eyeCtrl">
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
        <form name="search" class="navbar-form navbar-left" action="GetTweets" method="GET">
          <input type="text" class="form-control col-lg-8" name="topic" placeholder="Search">
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
    <div class="col-lg-12 titleBox">
      <h1>{{test}}</h1>
    </div>
    <div class="col-lg-4">
            <div class="bs-component">
              <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel primary</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>

              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel success</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>

              <div class="panel panel-warning">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel warning</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>
              <div class="panel panel-danger">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel danger</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="bs-component">
              <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel primary</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>

              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel success</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>

              <div class="panel panel-warning">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel warning</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>
              <div class="panel panel-danger">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel danger</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="bs-component">
              <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel primary</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>

              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel success</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>

              <div class="panel panel-warning">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel warning</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>
              <div class="panel panel-danger">
                <div class="panel-heading">
                  <h3 class="panel-title">Panel danger</h3>
                </div>
                <div class="panel-body">
                  Panel content
                </div>
              </div>
            </div>
          </div>


  </div>
  <script type="text/javascript">
          var frm = $('#submitPiano');
          frm.submit(function (ev) {
              ev.preventDefault();
              $.ajax({
                  type: frm.attr('method'),
                  url: frm.attr('action'),
                  data: frm.serialize(),
                  success: function (data) {
                      console.log(data);
                      window.location.reload();
              }
          });

          
          });
        </script>
<%

%>
</body>
</html>