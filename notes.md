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
