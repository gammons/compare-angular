'use strict'
@app = angular.module('comparator')

@app.controller 'MainCtrl', ($scope, $location, $filter, $sce) ->
  $scope.compare = -> $location.path('/compare').search(checked: $scope.checkedItems)

