Rails.application.routes.draw do
 # use the posts controller 
resources :posts
root'posts#index'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
