Rails.application.routes.draw do
 
  resources :events


  post '/events/:id/attend', to: "events#attend", as: :attend_event

  delete '/events/:id/leave', to: "events#leave", as: :leave_event

  root 'public#index'



  devise_for :users
  resources :users, except: [:new, :create]
  post '/private', to:'private#index'

  
  
  get '/public', to: 'public#index'
  get '/private', to: 'private#index'
  get '/signed_in', to: 'private#signed_in'
  

end
