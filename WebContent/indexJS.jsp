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
        <form name="search" class="navbar-form navbar-left" method="GET" action="https://api.twitter.com/1.1/search/tweets.json">
          <!-- <input type="text" class="form-control col-lg-8" name="topic" id="STopic" ng-model="formTopic" ng-model-instant placeholder="Search"> -->
          <!-- <button class="btn" ng-click="newSearch()"><i class="glyphicon glyphicon-plus"> </i>Search</button> -->
          <input type="text" name="q">

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
      <h1>{{topic}}</h1>
    </div>
   <a class="twitter-timeline" href="https://twitter.com/search?q=%23{{topic}}" data-widget-id="452971948444631041">Tweets about ""</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

  </div>
<%

%>
</body>
</html>