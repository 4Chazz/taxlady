Rails.application.routes.draw do

  root 'bigpages#index'

  root 'message#index'
  resources :messages do
  end
end
