Rails.application.routes.draw do
  get '/meetings' => 'meetings#index'
  post '/meetings' => 'meetings#create'
  get '/meetings/:id' => 'meetings#show'

  patch '/meetings/:id' => 'meetings#update'
  delete '/meetings/:id' => 'meetings#destroy'
end
