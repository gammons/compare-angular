'use strict'
@app = angular.module('comparator')

@app.controller 'MainCtrl', ['$scope','$location', 'gdata', ($scope, $location, gdata) ->
  $scope.compare = ->
    $location.path('/compare').search(checked: $scope.checkedItems)

  $scope.clickLink = (id) ->
    item = gdata.find(id)
    link = "/item/#{id}/#{gdata.seoUrl(item.title)}"
    $location.path("/item/#{id}/#{gdata.seoUrl(item.title)}")
]


