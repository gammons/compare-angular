@app.filter 'formatData', ['$filter', '$sce', ($filter, $sce) ->
  (input, header) ->
    return input if header.format == ''
    if header.format == 'link'
      $sce.trustAsHtml("<a href='#{input}' target='_blank'>#{input}</a>")
    else
      $filter(header.format)(input)
]
