angular.module('loomioApp').config ($provide, Session) ->
  $provide.decorator 'AbilityService', ($delegate) ->
    $delegate.canCreateSubgroups = (group) ->
      Session.user().isAdmin or group.features.useSubgroups
    $delegate
