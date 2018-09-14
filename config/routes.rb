Rails.application.routes.draw do

    resources :whines do
      resources :clarifiers
      resources :answers
    end

    resources :whiners
    resource :session, only: [:new, :create, :destroy]

    root 'whines#index'

end
