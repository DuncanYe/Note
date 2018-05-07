class User < ApplicationRecord
  validates :name, presence: true
  validates_presence_of :name
  validates :email, length: { minimum: 5 }

  has_many :posts
end