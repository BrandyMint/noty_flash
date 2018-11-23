require "noty_flash/version"

module NotyFlash
  module Rails
    if defined?(::Rails) and ::Rails.version.to_s >= "3.1"
      class Rails::Engine < ::Rails::Engine
        # this class enables the asset pipeline
      end
    end
  end
end
