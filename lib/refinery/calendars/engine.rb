require 'refinerycms-calendars'

module Refinery
  module Calendars
    class Engine < Rails::Engine
      include Refinery::Engine

      isolate_namespace Refinery
      engine_name :refinery_calendars

      initializer "register refinerycms_calendars plugin", :after => :set_routes_reloader do |app|
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinery_calendars"
          plugin.url = app.routes.url_helpers.refinery_admin_calendars_path
          plugin.menu_match = /^\/refinery\/calenda(rs|r_settings)$/
          plugin.activity = {
            :class_name => :'refinery/calendar',
            :title => 'name',
            :url_prefix => nil
          }
        end
      end

      config.after_initialize do
        Refinery.register_engine(Refinery::Calendars)
      end
    end
  end
end
