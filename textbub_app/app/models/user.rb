class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :handle, presence: true, uniqueness: true
  has_secure_password
end
