class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
    add_index :products, :code, :unique => true
  end
end
