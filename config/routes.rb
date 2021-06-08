Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'post/index' => 'posts#index'

  get 'posts/new' => 'posts#new'

  post 'post' => 'posts#create'

end
