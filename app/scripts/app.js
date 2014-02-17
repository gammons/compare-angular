'use strict';

angular.module('comparator', ['grantDatatables'])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/compare', {
        templateUrl: 'views/comapre.html',
        controller: 'CompareCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
