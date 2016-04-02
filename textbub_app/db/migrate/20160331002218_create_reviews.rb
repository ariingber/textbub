class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.string :content
      t.string :handle
      t.string :review_phone
    end
  end
end
