@app = angular.module('comparator')
@app.controller 'CompareCtrl', ['$scope', '$location', 'gdata', 'compareColor','sorter', ($scope, $location, gdata, compareColor, sorter) ->
  success = (resp) ->
    $scope.headers = resp.header
    $scope.hexes = compareColor.getHex(resp.data.length)
    $scope.rows = resp.data
  gdata.findByIds($location.search().checked,success)

  $scope.colors = compareColor.getHex(20)


  $scope.compareClass = (row, rows, header) ->
    if header.compare
      sorted = sorter.sortItems(row, rows, header)
      index = _.indexOf sorted, row[header.key]
      {'background-color': $scope.hexes[index]}
]
