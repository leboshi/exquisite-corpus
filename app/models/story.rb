class Story < ApplicationRecord
  has_many :fragments, dependent: :destroy
end
