Rails.application.routes.draw do

  resources :types
  resources :trainers
  resources :towns
  resources :pokemons
  resources :talents
  root :to => 'pokemons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :exchanges
  get 'exchanges', to: 'exchanges#index'
  post 'exchanges/choose_trainer', to: 'exchanges#choose_trainer', as: :choose_trainer

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
