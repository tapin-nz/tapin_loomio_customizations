angular.module('loomioApp').config ($provide) ->
  $provide.decorator 'groupFormDirective', ($delegate) ->
    $delegate[0].compile = ->
      ($scope) ->
        $scope.group.membersCanAddMembers = false if $scope.group.isNew()
    $delegate
