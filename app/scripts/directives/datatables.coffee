angular.module('grantDatatables', []).directive 'gdatatable', ($http) ->
  link: ($scope, $elem, attrs) ->
    $scope.sortDir = true

    $http.get('data2.json').success (resp) ->
      buildHeader(resp.header)
      $scope.rows = resp.data

    buildHeader = (headers) ->
      $scope.tableHeaderAttributes = []
      $scope.tableHeaderNames = []
      for header in headers
        $scope.tableHeaderNames.push
          name: header[Object.keys(header)[0]]
          key: Object.keys(header)[0]
          sortable: true

    $scope.changeSortColumn = (col) ->
      if $scope.sortColumn == col.key
        $scope.sortDir = !$scope.sortDir
      $scope.sortColumn = col.key

    $scope.getSortClass = (col) ->
      console.log "get sort class"
      if $scope.sortColumn == col.key
        if $scope.sortDir
          "glyphicon glyphicon-arrow-up"
        else
          "glyphicon glyphicon-arrow-down"
      



