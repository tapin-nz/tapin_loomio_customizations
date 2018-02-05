Session        = require 'shared/services/session.coffee'
AbilityService = require 'shared/services/ability_service.coffee'

AbilityService.canCreateSubgroups = (group) ->
  Session.user().isAdmin or group.features.useSubgroups
