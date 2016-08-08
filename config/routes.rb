Rails.application.routes.draw do
  
 
  resources :events


  root 'public#index'

  devise_for :users
  
  resources :users, except: [:new, :create]
 
  
  get '/public', to: 'public#index'
  get '/private', to: 'private#index'
  get '/signed_in', to: 'private#signed_in'

  # get 'public/index'

  # get 'private/index'

  # get 'private/signed_in'
  # get 'user/index'

  # get 'user/show'

  # get 'user/edit'

  # get 'user/update'

  # get 'user/destroy'
end
