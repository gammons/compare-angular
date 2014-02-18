@datatables.service 'gdata', ($http) ->
  getData = (success) =>
    if angular.isUndefined(@data)
      $http.get('data2.json').success (resp) =>
        @data = resp
        success(@data)
    else
      success(@data)



