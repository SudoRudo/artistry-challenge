Rails.application.routes.draw do
  get '/artists', to: 'artists#index', as: 'artists'
  
  
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists', to: 'artists#create'

  get '/artists/:id', to: 'artists#show', as: 'artist'

  get '/artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
  post '/artists/:id', to: 'artists#update'

  delete '/artists/:id', to: 'artists#destroy'




  get '/artist_instruments/new', to: 'artist_instruments#new', as: "new_artist_instrument"
  post '/artist_instruments', to: 'artist_instruments#create'

  get '/instruments', to: 'instruments#index', as: 'instruments'
end
