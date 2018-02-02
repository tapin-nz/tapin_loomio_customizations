angular.module('loomioApp').config ['$provide', ($provide) ->
  $provide.decorator 'groupFormDirective', ['$delegate', ($delegate) ->
    $delegate[0].compile = ->
      ($scope) ->
        $scope.group.membersCanAddMembers = false if $scope.group.isNew()
    $delegate
  ]
]
