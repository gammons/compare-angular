@app.filter 'formatData', ['$filter', '$sce', ($filter, $sce, $compile) ->
  (input, scope) ->
    return input if scope.header.format == ''
    if scope.header.format == 'link'
      $sce.trustAsHtml("<a href='#{input}' target='_blank'>#{input}</a>")
    if scope.header.format == 'profile'
      "<a ng-click='clickLink()'>#{input}</a>"
    else
      $filter(scope.header.format)(input)
]
