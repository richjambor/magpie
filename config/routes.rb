Rails.application.routes.draw do
 get '/lists/:id', to: 'lists#show' 
 root to: 'lists#index'

end
