class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.integer :product_id

      t.timestamps
    end
  end
end
