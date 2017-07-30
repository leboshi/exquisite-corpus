class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password

  has_many :fragments, dependent: :nullify
end
