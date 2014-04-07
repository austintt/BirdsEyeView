var app = angular.module('birdsEye',[]);

app.controller('eyeCtrl', ['$scope', function($scope){
    $scope.test = "blah blah blah";
    $scope.topic = "";

     $scope.newSearch = function() {
        $scope.topic = $scope.formTopic;
        $scope.formTopic = '';

        // $scope.topic = $("#STopic").value;
        // $scope.test = $scope.topic;
     }
}])

