Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :posts do
      resources :likes, only: [:create, :destroy]
    end

    root 'posts#index'

    delete 'posts/:id' => 'posts#destroy' 
end
