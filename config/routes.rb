Rails.application.routes.draw do
  #get '/blogs', to: 'blogs#index'
  resources :blogs
end
