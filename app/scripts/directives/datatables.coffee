angular.module('grantDatatables', []).directive 'gdatatable', ($http) ->
  link: ($scope, $elem, attrs) ->
    $scope.sortDir = true

    $http.get('data2.json').success (resp) ->
      buildHeader(resp.header)
      populateData(resp.data)

    buildHeader = (headers) ->
      $scope.tableHeaderAttributes = []
      $scope.tableHeaderNames = []
      for header in headers
        $scope.tableHeaderAttributes.push Object.keys(header)[0]
        $scope.tableHeaderNames.push {name: header[Object.keys(header)[0]], key: Object.keys(header)[0]}

    populateData = (data) ->
      #$scope.rows = []
      console.log data
      $scope.rows = data
      # for row in data
      #   $scope.rows.push $scope.tableHeaderAttributes.map (attr) -> row[attr]
      console.log $scope.rows

    $scope.changeSortColumn = (col) ->
      if $scope.sortColumn == col.key
        $scope.sortDir = !$scope.sortDir
      $scope.sortColumn = col.key
      console.log "sortColumn = ", $scope.sortColumn, "sortdir = ", $scope.sortDir


