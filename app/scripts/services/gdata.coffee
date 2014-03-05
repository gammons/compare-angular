@datatables.factory 'gdata', ['$http', ($http) ->
  f =
    getData: (success) =>
      if angular.isUndefined(@alldata)
        $http.get('data.json').success (resp) =>
          @alldata = resp
          success(@alldata)
      else
        success(@alldata)

    getHeaders: (success) ->
      succ = (resp) ->
        success(resp.header)
      @getData(succ)

    findByIds: (ids, success) ->
      succ = (resp) ->
        ret = _.cloneDeep(resp)
        ids = _.map ids, (id) -> id.toString()
        ret.data = _.select ret.data, (row) -> _.contains ids, row.id.toString()
        success(ret)
      @getData(succ)

    find: (id, success) ->
      succ = (resp) ->
        _.find resp.data, (item) -> item.id.toString() == id.toString()
      @getData(succ)

    seoUrl: (input) ->
      input.replace(/(^\-+|[^a-zA-Z0-9\/_| -]+|\-+$)/g, '').toLowerCase().replace(/[\/_| -]+/g, '-')

  f
]
