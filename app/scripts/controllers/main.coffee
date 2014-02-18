'use strict'
@app = angular.module('comparator')

@app.controller 'MainCtrl', ($scope, $location, $filter) ->
  $scope.compare = -> $location.path('/compare').search(checked: $scope.checkedItems)

@app.filter 'link', ($sce) ->
  (link) -> $sce.trustAsHtml("<a href='#{link}' target='_blank'>#{link}</a>")

@app.filter 'gformat', ($filter, $sce) ->
  (input, header) ->
    return input if angular.isUndefined(header.dataType)
    if header.dataType == 'linky'
      $sce.trustAsHtml $filter(header.dataType)(input)
    else
      $filter(header.dataType)(input)
