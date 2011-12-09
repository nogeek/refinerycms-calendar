Rails.application.routes.draw do
  scope(:module => 'refinery') do
    resources :events do
      collection do
        get 'archive/:year(/:month)' => 'events#archive', :as => 'archive'
        get 'category/:id' => 'event_categories#show', :as => 'category'
      end
    end
    scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
      resources :soldiers, :except => :show do
        post :update_positions, :on => :collection
      end
    end
  end
end
