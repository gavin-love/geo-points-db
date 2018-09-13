Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :companies
      resources :users do
        post '/locations', to: 'users/locations#create'
      end
    end
  end
  resources :companies, only: [:new, :create]
end
