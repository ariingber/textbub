class User < ActiveRecord::Base
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :handle, presence: true, uniqueness: true
  has_secure_password
end
