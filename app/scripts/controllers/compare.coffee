@app = angular.module('comparator')
@app.controller 'CompareCtrl', ($scope, $location) ->
  console.log $location.search().checked
  console.log $scope.checkedItems
