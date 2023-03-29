Rails.application.routes.draw do
  resources :cars do
    resources :parts
  end

  get '/parents', to: 'cars#index'
  get '/cars/:id', to: 'cars#show'
  get 'parts', to: 'parts#index'
  get 'parts/:id', to: 'parts#show'
  get '/cars/new', to: 'cars#new'
  post '/cars', to: 'cars#create'
  get '/cars/:id/edit', to: 'cars#edit'
  patch '/cars/:id', to: 'cars#update'
  get '/cars/:id/parts/new', to: 'parts#new'
  post '/cars/:id/parts', to: 'parts#create'
  get '/cars/:id/parts/:id/edit', to: 'parts#edit'
  patch '/cars/:id/parts/:id', to: 'parts#update'
end

