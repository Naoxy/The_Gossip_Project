Rails.application.routes.draw do
  root 'index#home' 
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  resources :users
  resources :gossips
  resources :connections, only: [:index, :show, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
