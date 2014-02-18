'use strict'
@app = angular.module('comparator')

@app.controller 'MainCtrl', ($scope, $location, $filter) ->
  $scope.compare = -> $location.path('/compare').search(checked: $scope.checkedItems)

@app.filter 'link', ->
  (link) -> "<a href='#{link}' target='_blank'>#{link}</a>"

@app.filter 'gformat', ($filter) ->
  (input, header) ->
    return input if angular.isUndefined(header.dataType)
    $filter(header.dataType)(input)
