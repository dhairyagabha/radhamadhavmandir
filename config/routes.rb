Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/daily-darshan' => 'home#daily_darshan'
  mount Webmanager::Engine => "/webmanager"
  resources :articles

end
