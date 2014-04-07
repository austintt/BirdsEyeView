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
          <li class="active"><a href="#">Search</a></li>
          
        </ul>
        <form name="search" id="search" class="navbar-form navbar-left">
          <input type="text" class="form-control col-lg-8" name="topic" id="topic" placeholder="Search" ng-model="formSearch" ng-model-instant>
        </form>
        <ul class="nav navbar-nav navbar-right"> 
          <li><a href="http://ec2-50-112-185-93.us-west-2.compute.amazonaws.com/landing-page/birdApp.html">About</a></li>
        </ul>
      </div>
    </div> <!--END NAVBAR-->
    <div class="col-lg-12 titleBox">
      <h1>{{test}}</h1>
    </div>
    <div class="col-lg-4" ng-repeat="tweet in tweets">
            <div class="bs-component">
              <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">{{tweet.username}}</h3>
                </div>
                <div class="panel-body">
                  {{tweet.text}}
                </div>
              </div>

              
            </div>
          </div>



  </div>
</body>
</html>