Rails.application.routes.draw do
 resources :lists, only: [:index, :show, :new]
 root to: 'lists#index'

end
