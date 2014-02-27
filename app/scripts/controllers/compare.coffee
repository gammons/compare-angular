@app = angular.module('comparator')
@app.controller 'CompareCtrl', ($scope, $location, gdata, compareColor) ->
  success = (resp) ->
    $scope.headers = resp.header
    $scope.hexes = compareColor.getHex(resp.data.length)
    $scope.rows = resp.data
  gdata.findByIds($location.search().checked,success)

  $scope.colors = compareColor.getHex(20)

  $scope.compareClass = (row, rows, header) ->
    if header.compare
      items = _.map rows, (row) -> row[header.key]
      sorted = if header.format == 'number' or header.format == 'currency'
        _.sortBy items, (item) -> parseInt(item)
      else
        _.sortBy items
      sorted.reverse() if header.compare == 'lower'
      index = _.indexOf sorted, row[header.key]
      {'background-color': $scope.hexes[index]}
