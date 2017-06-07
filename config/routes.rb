Rails.application.routes.draw do
  namespace :api do
    
    namespace :v1 do
      get '/meetings' => 'meetings#index'
      post '/meetings' => 'meetings#create'
      get '/meetings/:id' => 'meetings#show'

      patch '/meetings/:id' => 'meetings#update'
      delete '/meetings/:id' => 'meetings#destroy'
    end


    namespace :v2 do
      get '/meetings' => 'meetings#index'
      post '/meetings' => 'meetings#create'
      get '/meetings/:id' => 'meetings#show'

      patch '/meetings/:id' => 'meetings#update'
      delete '/meetings/:id' => 'meetings#destroy'
    end
  end
end
