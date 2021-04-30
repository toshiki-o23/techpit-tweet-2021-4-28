class User < ApplicationRecord
  has_many :tweets, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true, length: {minimum: 1, maximum: 15}

end
