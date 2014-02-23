@app = angular.module('comparator')

#red is #f78181
#green is ##81F781

@app.factory 'compareColor', ->
  # { compareClass: = (row, rows, header) ->
  #   console.log "header.compare = ", header
  #   if header.compare
  #     items = _.map rows, (row) -> row[header.key]
  #     sorted = _.sortBy items
  #     index = _.indexOf sorted, row[header.key]
  #     console.log "index is ", index
  #     {'background-color': $scope.hexes[index]}
  {
    getHex: (numItems) ->
      # white is middle
      hexes = []
      i = 0
      red = 230
      green = 255
      other = 109
      coloreds = Math.floor(numItems / 2)
      step = Math.floor (255 - other) / coloreds

      while i < coloreds
        hexes.push("rgb(#{red}, #{other}, #{other})")
        red += Math.ceil(25 / coloreds)
        other += step
        i++

      hexes.push("rgb(255,255,255)") if numItems % 2 == 1

      i = 0
      other = 255 - step
      while i < coloreds
        hexes.push("rgb(#{other}, #{green}, #{other})")
        green -= Math.ceil(25 / coloreds)
        other -= step
        i++
      hexes
  }
