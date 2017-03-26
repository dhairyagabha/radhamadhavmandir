Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/contact-us' => 'home#contact'
  get '/events' => 'home#events'
  get '/daily-darshan' => 'home#daily_darshan'
  get '/about-mandir' => 'home#about'
  mount Webmanager::Engine => "/webmanager"
  resources :articles
end
