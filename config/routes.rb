ActionController::Routing::Routes.draw do |map|
  map.resources :fireworks, :only => [:index, :new, :show], :as => 'gallery'

  map.resources :invitations, :only => [:index, :new, :create]
end
