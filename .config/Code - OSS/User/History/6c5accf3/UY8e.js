angular.module('yostartupApp')
  .controller('MainCtrl', function ($scope, $http) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma',
      'SitePoint'
    ];

  $scope.status = {
    isopen: false
  };

  $scope.toggled = function(open) {
    console.log('Dropdown is now: ', open);
  };

  $scope.toggleDropdown = function($event) {
    $event.preventDefault();
    $event.stopPropagation();
    $scope.status.isopen = !$scope.status.isopen;
  };


  //making ajax calls -- current step I'm working on DOES NOT WORK!!!!
  $http.get('http://test.s17.sevacall.com/abhas/index.php').
    success(function(data, status, headers, config) {
      console.log(data);//debug
      $scope.categories = data;
    }).
    error(function(data, status, headers, config) {
      //log error
    });

  });