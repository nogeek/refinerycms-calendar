require 'refinerycms-core'

module Refinery
  autoload :CalendarsGenerator, 'generators/refinery/calendars_generator'

  module Inquiries
    require 'refinery/calendars/engine' if defined?(Rails)

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join("spec/factories").to_s ]
      end
    end
  end
end
