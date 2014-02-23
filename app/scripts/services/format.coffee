@app.filter 'formatData', ($filter, $sce) ->
  (input, header) ->
    return input if angular.isUndefined(header.dataType)
    if header.dataType == 'link'
      $sce.trustAsHtml("<a href='#{input}' target='_blank'>#{input}</a>")
    else
      $filter(header.dataType)(input)
