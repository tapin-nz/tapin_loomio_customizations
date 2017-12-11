module Plugins
  module TapinCustomizations
    class Plugin < Plugins::Base
      setup! :tapin_customizations do |plugin|
        plugin.enabled = true
        plugin.use_asset_directory 'angular/decorators'
        plugin.extend_class(AppConfig) { group_features << 'useSubgroups' }
        plugin.use_translations "config/locales", :tapin
      end
    end
  end
end
