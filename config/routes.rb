Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'api/v1/info#index'
  # Defines the root path route ("/")
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        get 'info', to: 'info#index'
      end
    end
  end
  
end
