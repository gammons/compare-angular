'use strict'

@app = angular.module('bitcoinAngularApp')

@app.controller 'MainCtrl', ($scope) ->
  console.log "HERE"
  $scope.dtOptions =
    iDisplayLength: 5
    sDom: "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>"

