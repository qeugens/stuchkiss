class Collection < ApplicationRecord
  mount_uploader :cover, CoverUploader
  belongs_to :user
  has_many :items, dependent: :destroy
end
