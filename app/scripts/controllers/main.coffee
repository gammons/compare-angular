'use strict'

@app = angular.module('bitcoinAngularApp')

@app.controller 'MainCtrl', ($scope) ->
  $scope.dtOptions =
    bPaginate: false
    aaData: [
      {"id":1,"manufacturer":"Dingus Inc","hardware_model":"Dingus 5000","link":"http://google.com","instructions_link":"http://ass.com","description":"this is the description","cost":"5000.0","algorithm":"SHA-256","speed_gh_s":1234.0,"power_w":"500.0","is_available":true,"availability_comment":"Shippped dec 2013","hardware_type":"ASIC","created_at":"2014-02-13T07:28:12.982-05:00","updated_at":"2014-02-13T07:28:12.982-05:00"},
      {"id":2,"manufacturer":"Dangler","hardware_model":"Dangler 5000","link":"http://google.com","instructions_link":"http://ass.com","description":"this is the description","cost":"5000.0","algorithm":"SHA-256","speed_gh_s":500.0,"power_w":"600.0","is_available":false,"availability_comment":"not available yet","hardware_type":"ASIC","created_at":"2014-02-13T07:29:08.713-05:00","updated_at":"2014-02-13T07:29:08.713-05:00"}]
    aoColumns: [
      {sTitle: 'Compare', mData: 'id',  bSortable: false, sClass: 'compareBox' },
      {sTitle: 'Manufacturer', mData: 'manufacturer', bSortable:false},
      {sTitle: 'Hardware model', mData: 'hardware_model'},
      {sTitle: 'Link', mData: 'link', bSortable: false},
      {sTitle: 'Instructions', mData: 'instructions_link', bSortable: false},
      {sTitle: 'Description', mData: 'description', bSortable: false},
      {sTitle: 'Cost', mData: 'cost'},
      {sTitle: 'Algorithm', mData: 'algorithm'},
      {sTitle: 'Speed (GH/s)', mData: 'speed_gh_s'},
      {sTitle: 'Power (W)', mData: 'power_w'},
      {sTitle: 'Available?', mData: 'is_available' },
      {sTitle: 'Comments', mData: 'availability_comment', bSortable: false},
      {sTitle: 'Hardware type', mData: 'hardware_type' }
    ]

