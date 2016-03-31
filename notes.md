###### steps
- gem install rails
- rbenv rehash
- rails new textbub_app -d postgresql
- pg_ctl stop  -D '/usr/local/var/postgres'
- rake db:create
- rails g migration CreateUsers
- rails g migration CreateReviews
- ```def change
  create_table :users do |t|
    t.string :username
    t.string :password_digest
    t.timestamps
  end
end ```
- added above to users table
- uncommented bcrypt from gem file
- run install bundle
- created user.rb in models directory
class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :username, presence: true, uniqueness: true
  has_secure_password
end

- created review.rb in models directory

class Review < ActiveRecord::Base
  belongs_to :user
end
- temp root root to: 'users#new'
