require "noty_flash/version"

module NotyFlash
  if defined?(::Rails) and ::Rails.version.to_s >= "3.1"
    class Engine < ::Rails::Engine
      # this class enables the asset pipeline
      isolate_namespace NotyFlash
    end
  end
end
