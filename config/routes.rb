Rails.application.routes.draw do
  get 'images/new'

  get 'images/show'

  root :to => 'users#profile'

  get 'image/index'

  get 'image/show'

  resources :users do
    resources :images, :except => [:index] do
      resources :tags
    end
  end
  devise_for :users

end
