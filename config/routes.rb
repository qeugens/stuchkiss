Rails.application.routes.draw do
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
  end
  scope '/api/v1' do
    resources :items
  end
  scope '/api/v1' do
    resources :collections
  end
end
