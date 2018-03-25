Rails.application.routes.draw do

  root 'home#index'
  resources :home, only: [:index, :new, :create]
  # root 'messages#index'
  # resources :messages do
  # end
end

