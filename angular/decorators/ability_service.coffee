angular.module('loomioApp').config ['$provide', ($provide) ->
  $provide.decorator 'AbilityService', ['$delegate', 'Session', ($delegate, Session) ->
    $delegate.canCreateSubgroups = (group) ->
      Session.user().isAdmin or group.features.useSubgroups
    $delegate
  ]
]
