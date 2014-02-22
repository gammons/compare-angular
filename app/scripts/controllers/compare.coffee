@app = angular.module('comparator')
@app.controller 'CompareCtrl', ($scope, $location, gdata) ->
  success = (resp) ->
    $scope.headers = resp.header
    console.log "rows is ", resp
    $scope.rows = resp.data
  gdata.findByIds($location.search().checked,success)

  $scope.compareClass = ($scope) ->
    console.log "row is", $scope.row
    {'background-color': 'red'}

