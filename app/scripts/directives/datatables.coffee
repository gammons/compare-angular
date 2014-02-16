angular.module('grantDatatables', []).directive 'gdatatable', ($compile) ->
  link: ($scope, $elem, attrs) ->
    $scope.dtOptions.fnDrawCallback = ->
      $elem.find('.compareBox').each (val) ->
        $(@).html "<input type='checkbox' value='#{val}'/>"
      $('input[type=checkbox]').bind 'click', $scope.check
    $elem.dataTable $scope.dtOptions
