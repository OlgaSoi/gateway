Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :source_providers, only: [:index,:show]
  resources :courses, only: [:index]
  resources :users, only: [:index,:show]
  get '/courses/history/', to: 'courses#history'
end
