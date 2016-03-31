class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.string :content
      t.string :service_providers_name
      t.string :review_phone
    end
  end
end
