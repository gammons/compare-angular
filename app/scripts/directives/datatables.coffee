angular.module('grantDatatables', []).directive 'gdatatable', ($http) ->
  link: ($scope, $elem, attrs) ->
    $http.get('data2.json').success (resp) ->
      buildHeader(resp.header)
      populateData(resp.data)

    buildHeader = (headers) ->
      $scope.tableHeaderAttributes = []
      $scope.tableHeaderNames = []
      console.log "scope is ", $scope
      for header in headers
        $scope.tableHeaderAttributes.push Object.keys(header)[0]
        $scope.tableHeaderNames.push header[Object.keys(header)[0]]
        console.log "updating names"

    populateData = (data) ->
      $scope.rows = []
      for row in data
        $scope.rows.push $scope.tableHeaderAttributes.map (attr) -> row[attr]
      console.log $scope.rows
