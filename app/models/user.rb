class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users

  validates :email, presence: true

  def tests_by_level(level)
    tests.where(level: level)
  end
end
