'use strict'
@app = angular.module('comparator')

@app.controller 'MainCtrl', ($scope, $location) ->
  $scope.compare = ->
    console.log "checkedItems", $scope.checkedItems
    $location.path('/compare').search(checked: $scope.checkedItems)

