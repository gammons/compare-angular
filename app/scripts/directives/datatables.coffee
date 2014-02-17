angular.module('grantDatatables', []).directive 'gdatatable', ($http) ->
  link: ($scope, $elem, attrs) ->
    $scope.sortDir = true

    $http.get('data2.json').success (resp) ->
      $scope.tableHeaderNames = resp.header
      $scope.rows = resp.data

    $scope.changeSortColumn = (col) ->
      return unless col.sortable
      if $scope.sortColumn == col.key
        $scope.sortDir = !$scope.sortDir
      $scope.sortColumn = col.key

    $scope.getSortClass = (col) ->
      if $scope.sortColumn == col.key
        if $scope.sortDir
          "glyphicon glyphicon-arrow-up"
        else
          "glyphicon glyphicon-arrow-down"
