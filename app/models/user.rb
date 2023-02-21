class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, :recoverable, :rememberable, jwt_revocation_strategy: self
  has_many :items, dependent: :destroy
  has_many :collections, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :tags, dependent: :destroy
end