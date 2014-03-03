@app.factory 'sorter', ->
  {
    sortItems: (row, rows, header) ->
      items = _.map rows, (row) -> row[header.key]
      sorted = if header.format == 'number' or header.format == 'currency'
        _.sortBy items, (item) -> parseInt(item)
      else
        _.sortBy items
      sorted.reverse() if header.compare == 'lower'
      sorted
  }
