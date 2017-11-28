module Plugins
  module TapinCustomizations
    class Plugin < Plugins::Base
      setup! :tapin_customizations do |plugin|
        plugin.enabled = true
        plugin.use_asset_directory 'angular/decorators'
      end
    end
  end
end
