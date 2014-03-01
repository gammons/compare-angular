'use strict';

angular.module('comparator', ['grantDatatables', 'ngRoute', 'ngSanitize','seo'])
  .config(function ($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    $locationProvider.hashPrefix('!');
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/compare', {
        templateUrl: 'views/compare.html',
        controller: 'CompareCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
