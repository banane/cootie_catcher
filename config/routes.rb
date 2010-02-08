ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

map.connect 'games/start_creation', :controller => 'game', :action => "start_creation", :method=> "get"

map.connect 'game/create', :controller => 'game', :action => "create", :method => "get"
map.connect 'game/create', :controller => 'game', :action => "create", :method => "post"

map.connect 'game/', :controller => 'game', :action => "index", :method => "get"


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
