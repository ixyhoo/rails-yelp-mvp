
  Rails.application.routes.draw do
    resources :restaurants do
      collection do
        get :top
      end
      # member do
      #   get :
      # end
      resources :reviews, only: [:new, :create]
    end
    resources :reviews, only: [:destroy]
    # verb, relative path, to: controller#action
  end
