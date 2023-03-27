# Rails.application.routes.draw do
#   devise_for :users
#   get 'favourites/index'
#   get 'favourites/create'
#   get 'favourites/update'
#   get 'favourites/destroy'
#   get 'likes/index'
#   get 'likes/create'
#   get 'likes/update'
#   get 'likes/destroy'
#   get 'subscriptions/index'
#   get 'subscriptions/create'
#   get 'subscriptions/update'
#   get 'subscriptions/destroy'
#   get 'tagselecteds/index'
#   get 'tagselecteds/create'
#   get 'tagselecteds/update'
#   get 'tagselecteds/destroy'
#   get 'tags/index'
#   get 'tags/create'
#   get 'tags/update'
#   get 'tags/destroy'
#   get 'collections/index'
#   get 'collections/create'
#   get 'collections/update'
#   get 'collections/destroy'
#   get 'items/index'
#   get 'items/create'
#   get 'items/update'
#   get 'items/destroy'
#   get 'users/index'
#   get 'users/create'
#   get 'users/update'
#   get 'users/destroy'
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"

# end

Rails.application.routes.draw do
  get 'users/index'
  
  # namespace :api, defaults: {format: :json} do
  #   namespace :v1 do
  #     resources :users, only: %i[index show]
  #   end
  # end

  scope :api, defaults: { format: :json } do
    scope :v1 do
      devise_for :users, defaults: { format: :json }, path: '', path_names: {
        sign_in: 'login',
        sign_out: 'logout',
        registration: 'signup'
      },
      controllers: {
        sessions: 'api/v1/users/sessions',
        registrations: 'api/v1/users/registrations'
      }
    end
  end
  scope '/api/v1' do
    resources :users
      post 'users/:id/follow', to: "users#follow", as: "follow_user"
      post 'users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
      get 'users/:id/following', :to => "users#following", :as => :following
      get 'users/:id/followed', :to => "users#followed", :as => :followed
      get 'users/:id/liked', :to => "users#liked", :as => :liked
      put 'users/:id/edit', to: "users#update_info"
    resources :items
    resources :collections
    resources :tags
    resources :tagselecteds
    resources :subscriptions
    resources :likes
    resources :favourites
    resources :reportitems
    resources :reportits
  end
end