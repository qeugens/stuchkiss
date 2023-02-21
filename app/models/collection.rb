class Collection < ApplicationRecord
  mount_uploader :cover, CoverUploader
  has_many :items, dependent: :destroy
  belongs_to :user
end
