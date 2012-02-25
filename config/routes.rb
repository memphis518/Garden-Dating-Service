ActionController::Routing::Routes.draw do |map|

  map.resources :users

  map.resources :user_sessions

  map.root :controller => 'welcome'

  map.register 'register', :controller => 'users', :action => 'new'

  map.login  'login',  :controller => 'user_sessions', :action => 'new'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'

end
