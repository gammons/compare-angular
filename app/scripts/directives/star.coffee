@app.directive 'star', ['sorter', (sorter) ->
  {
    restrict: 'E'
    link: (scope, element, attr) ->
      if scope.header.compare
        sorted = sorter.sortItems(scope.item, scope.rows, scope.header)
        sorted.reverse()
        index = _.indexOf sorted, scope.item[scope.header.key]
        element.addClass('hidden') if index != 0
      else
        element.addClass('hidden')
    template: "<span class='star-icon glyphicon glyphicon-star'></span>"
  }
]
