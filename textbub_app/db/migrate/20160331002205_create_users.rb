class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.attachment :image
      t.string :name
      t.string :handle
      t.string :business_name
      t.string :service_provided
      t.string :about_me
      t.string :email
      t.string :zipcode
      t.string :city
      t.string :password_digest
      t.string :street_address
      t.string :hours_of_operation
      t.string :telephone
      t.timestamps
    end
  end
end
