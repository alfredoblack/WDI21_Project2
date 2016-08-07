Rails.application.routes.draw do
  
  get 'user/index'

  get 'user/show'

  get 'user/edit'

  get 'user/update'

  get 'user/destroy'

  devise_for :users
  
  root 'public#index'

  get '/public', to: 'public#index'
  get '/private', to: 'private#index'
  get '/signed_in', to: 'private#signed_in'

  # get 'public/index'

  # get 'private/index'

  # get 'private/signed_in'
end
