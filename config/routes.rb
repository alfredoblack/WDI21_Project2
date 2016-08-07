Rails.application.routes.draw do
  
  root 'public#index'

  get '/public', to: 'public#index'
  get '/private', to: 'private#index'
  get '/signed_in', to: 'private#signed_in'

  # get 'public/index'

  # get 'private/index'

  # get 'private/signed_in'
end
