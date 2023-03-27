class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :collection
  belongs_to :user
  has_many :reportItems, dependent: :destroy
  has_many :reportits, dependent: :destroy
end
