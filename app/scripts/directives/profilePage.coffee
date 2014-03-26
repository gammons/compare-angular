@app.directive 'ng-profile-page', ['gdata', '$location', (gdata, $location) ->
  {
    restrict: 'E'
    transclude: true
    link: ($scope, $elem, attrs) ->
      $scope.goToProfilePage = (id) ->
        console.log 'profile page'
        item = gdata.find(id)
        link = "/item/#{id}/#{gdata.seoUrl(item.title)}"
        $location.path("/item/#{id}/#{gdata.seoUrl(item.title)}")
    template: "<a ng-click='goToProfilePage(#{$scope.item})'>#{$scope.item}</a>"
  }

]

