class Tagselected < ApplicationRecord
  belongs_to :tag
  belongs_to :item
end
