Rails.application.routes.draw do

  resources :restaurants, only: [:index, :new, :show, :review, :create] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:create, :show, :edit, :update, :destroy]

end
