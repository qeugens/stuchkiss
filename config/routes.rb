Rails.application.routes.draw do
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
  end
  
end
