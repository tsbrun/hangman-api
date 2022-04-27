Rails.application.routes.draw do
  # resource :levels, only: [:index, :show]
  get 'levels', to: 'levels#index', as: 'levels'
  get 'levels/:id', to: 'levels#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
