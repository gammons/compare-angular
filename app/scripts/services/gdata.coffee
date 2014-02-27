@datatables.factory 'gdata', ($http) ->
  f =
    getData: (success) =>
      if angular.isUndefined(@data)
        $http.get('data3.json').success (resp) =>
          @data = resp
          success(@data)
      else
        success(@data)

    findByIds: (ids, success) ->
      succ = (resp) ->
        ids = _.map ids, (id) -> id.toString()
        resp.data = _.select resp.data, (row) -> _.contains ids, row.id.toString()
        success(resp)
      @getData(succ)
  f





