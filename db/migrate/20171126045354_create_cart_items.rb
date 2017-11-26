class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :item_id
      t.integer :quantity
      t.integer :cart_id
      t.timestamps
    end
  end
end
