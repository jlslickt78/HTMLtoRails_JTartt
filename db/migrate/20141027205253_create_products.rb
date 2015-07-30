class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity_on_hand
      t.float :selling_price
      t.float :product_cost
      t.float :shipping_weight
      t.string :img_th
      t.string :image_full

      t.timestamps
    end
  end
end
