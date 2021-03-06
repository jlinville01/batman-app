Rails.application.routes.draw do
  root 'pages#index'

  post 'characters/find' => 'characters#find'

  resources :characters
  resources :episodes
  resources :movies
  resources :actors

  namespace 'api' do
    namespace 'v1' do
      resources :characters
      resources :episodes
      resources :movies
      resources :actors
    end
  end
end