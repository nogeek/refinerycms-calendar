module Refinery
  class CalendarsGenerator < Rails::Generators::Base
    def rake_db
      rake("refinery_calendars:install:migrations")
    end
  end
end

