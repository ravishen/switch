Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/home', to: 'pages#home'
root to: "pages#home"
end
