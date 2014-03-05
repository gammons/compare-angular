@app.controller 'ProfileCtrl', ['$scope', '$routeParams', 'gdata', ($scope, $routeParams, gdata) ->
  $scope.item = gdata.find $routeParams.id
  gdata.getHeaders (headers) ->
    console.log "HEAERES is ", headers
    $scope.headers = headers
]

