Rails.application.routes.draw do
  get 'favourites/index'
  get 'favourites/create'
  get 'favourites/update'
  get 'favourites/destroy'
  get 'likes/index'
  get 'likes/create'
  get 'likes/update'
  get 'likes/destroy'
  get 'subscriptions/index'
  get 'subscriptions/create'
  get 'subscriptions/update'
  get 'subscriptions/destroy'
  get 'tagselecteds/index'
  get 'tagselecteds/create'
  get 'tagselecteds/update'
  get 'tagselecteds/destroy'
  get 'tags/index'
  get 'tags/create'
  get 'tags/update'
  get 'tags/destroy'
  get 'collections/index'
  get 'collections/create'
  get 'collections/update'
  get 'collections/destroy'
  get 'items/index'
  get 'items/create'
  get 'items/update'
  get 'items/destroy'
  get 'users/index'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope '/api/v1' do
    resources :users
    resources :items
    resources :collections
    resources :tags
    resources :tagselecteds
    resources :subscriptions
    resources :likes
    resources :favourites
  end

end
