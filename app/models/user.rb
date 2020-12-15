class User < ApplicationRecord
  has_many :posts
  validates :name, :email, uniqueness: true
  validates :name, :email, :password, presence: true
  validates :name, :password, length: { in: 6..10 }
end
