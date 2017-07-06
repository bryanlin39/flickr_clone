Rails.application.routes.draw do
  root :to => 'picture#all'
  patch '/users/:user_id/images/:id/favorite' => 'images#favorite', as: 'favorite'
  patch '/users/:user_id/images/:id/unfavorite' => 'images#unfavorite', as: 'unfavorite'
  patch '/users/:user_id/images/:id/tag' => 'images#tag_users', as: 'tag'

  devise_for :users

  resources :users, :only => [:show] do
    resources :images do
      resources :tags
    end
  end
end
