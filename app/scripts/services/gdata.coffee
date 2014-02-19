@datatables.factory 'gdata', ($http) ->
  f =
    getData: (success) =>
      if angular.isUndefined(@data)
        $http.get('data2.json').success (resp) =>
          @data = resp
          success(@data)
      else
        success(@data)

    findByIds: (ids, success) ->
      succ = (resp) ->
        success(_.select resp.data, (row) -> _.contains ids, row.id.toString())
      @getData(succ)
  f





