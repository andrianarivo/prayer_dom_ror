class User < ApplicationRecord
  belongs_to :role

  validates :email, :username, :role, presence: true
end
