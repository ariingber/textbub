class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.string :content
      t.integer :review_phone
    end
  end
end
