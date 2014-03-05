@app.directive 'showvalue', ($filter, $compile) ->
  link: ($scope, $elem, attrs) ->

    val = $scope.item[$scope.header.key]

    if $scope.header.format == 'link'
      $elem.html "<a href='#{val}' target='_blank'>#{val}</a>"
    else if $scope.header.format == 'profile'
      $elem.html $compile("<a ng-click='clickLink(#{$scope.item.id})'>#{val}</a>")($scope)
    else
      return val if $scope.header.format == ''
      formatted = $filter($scope.header.format)(val)
      $elem.html formatted
