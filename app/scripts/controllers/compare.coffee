@app = angular.module('comparator')
@app.controller 'CompareCtrl', ($scope, $location, gdata) ->
  success = (resp) ->
    $scope.tableHeaderNames = resp.header
    $scope.rows = resp.data
  gdata.findByIds($location.search().checked,success)
