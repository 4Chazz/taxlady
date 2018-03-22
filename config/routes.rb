Rails.application.routes.draw do
root 'bigpages#index'
resources :messages, only: [:create, :new]
end
