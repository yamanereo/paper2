Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'posts/new' => 'posts#new'

  post 'posts' => posts#create'
end
