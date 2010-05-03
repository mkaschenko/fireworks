ActionController::Routing::Routes.draw do |map|
  map.resources :invitations, :only => [:index, :new, :create]
end
