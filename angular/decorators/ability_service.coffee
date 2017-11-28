angular.module('loomioApp').config ($provide) ->
  $provide.decorator 'AbilityService', ($delegate) ->
    $delegate.canCreateSubgroups = (group) -> false
    $delegate
