class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username,
            presence: true,
            length: { minimum: 4, maximum: 12 },
            uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
  validates :email, presence: true
end
