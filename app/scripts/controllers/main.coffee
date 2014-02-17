'use strict'
@app = angular.module('comparator')

@app.controller 'MainCtrl', ($scope, $location) ->
  $scope.compare = ->
    $location.path('/compare')



