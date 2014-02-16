'use strict'

@app = angular.module('bitcoinAngularApp')

@app.controller 'MainCtrl', ($scope) ->
  $scope.check = -> console.log "ran check"

  $scope.dtOptions =
    bPaginate: false
    sAjaxSource: 'data2.json'
    aoColumns: [
      {sTitle: 'Compare', mData: 'id', bSortable: false, sClass: 'compareBox' },
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

