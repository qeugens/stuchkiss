class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :collection
  belongs_to :user
end
