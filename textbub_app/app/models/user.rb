class User < ActiveRecord::Base
  has_attached_file :image,
    :path => "public/system/:class/:id/:filename",
    :url => "/system/:class/:id/:basename.:extension"

src="/system/users/images/000/000/015/medium/Angie.jpg"
  # has_attached_file :image,
  #                 :storage => :s3,
  #                 :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  #
  #                 validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #
  # def s3_credentials
  #   {:bucket => "textbub", :aws_access_key_id => ENV["AWS_ACCESS_KEY_ID"], :aws_secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  # end
  include ActiveModel::Validations
  validates_with HandleValidator
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, presence: true
  validates_length_of :name, within: 4..20, too_long: 'pick a shorter name', too_short: 'pick a longer name'
  validates_length_of :business_name, maximum: 30, message: "must be less than 30 letters"
  validates_length_of :about_me, maximum: 600, message: "must be less than 600 charecters"
  validates_length_of :zipcode, minimum: 5, too_short: 'please enter at least 5 characters'
  validates :handle, presence: true, uniqueness: true
  has_secure_password
end
