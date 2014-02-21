@datatables = angular.module('grantDatatables', [])
@datatables.directive 'gdatatable', ($http, $filter, $sce, gdata) ->
  link: ($scope, $elem, attrs) ->
    $scope.sortDir = true
    $scope.checkedItems = []

    success = (resp) ->
      $scope.headers = resp.header
      $scope.rows = resp.data
    gdata.getData(success)

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

    $scope.check = (id) ->
      if $scope.checkedItems.indexOf(id) > -1
        $scope.checkedItems.splice($scope.checkedItems.indexOf(id), 1)
      else
        $scope.checkedItems.push(id)

    $scope.format = (header, input) ->
      return input if angular.isUndefined(header.dataType)
      if header.dataType == 'link'
        $sce.trustAsHtml("<a href='#{input}' target='_blank'>#{input}</a>")
      else
        $filter(header.dataType)(input)
