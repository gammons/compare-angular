@datatables.factory 'gdata', ['$http', ($http) ->
  f =
    getData: (success) =>
      if angular.isUndefined(@alldata)
        $http.get('data.json').success (resp) =>
          @alldata = resp
          success(@alldata)
      else
        success(@alldata)

    findByIds: (ids, success) ->
      succ = (resp) ->
        ret = _.cloneDeep(resp)
        ids = _.map ids, (id) -> id.toString()
        ret.data = _.select ret.data, (row) -> _.contains ids, row.id.toString()
        success(ret)
      @getData(succ)
  f
]
