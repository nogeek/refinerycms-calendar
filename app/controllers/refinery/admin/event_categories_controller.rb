module Refinery
  module Admin

    class EventCategoriesController < ::Refinery::AdminController

      crudify :event_category,
              :title_attribute => :name,
              :xhr_paging => true

    end
  end
end
