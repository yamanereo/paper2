Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    resources :posts do
      resources :likes, only: [:create, :destroy]
    end
  end

end
