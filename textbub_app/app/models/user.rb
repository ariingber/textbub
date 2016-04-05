class User < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with HandleValidator
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, presence: true
  validates_length_of :name, within: 4..20, too_long: 'pick a shorter name', too_short: 'pick a longer name'
  validates_length_of :business_name, maximum: 30, message: "must be less than 30 letters"
  validates_length_of :about_me, maximum: 200, message: "must be less than 200 charecters"
  validates_length_of :zipcode, minimum: 5, too_short: 'please enter at least 5 characters'
  validates :handle, presence: true, uniqueness: true
  has_secure_password
end
