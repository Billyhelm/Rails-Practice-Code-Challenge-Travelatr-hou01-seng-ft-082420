Rails.application.routes.draw do

  resources :bloggers

  resources :destinations

  resources :posts, only: [:index, :show, :new, :create, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
