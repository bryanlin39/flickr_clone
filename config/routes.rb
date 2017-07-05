Rails.application.routes.draw do
  root :to => 'picture#all'

  devise_for :users

  resources :users, :only => [:show] do
    resources :images do
      resources :tags
    end
  end
end
