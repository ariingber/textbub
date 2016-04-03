class User < ActiveRecord::Base
  has_attached_file :image
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :handle, presence: true, uniqueness: true
  has_secure_password
end
