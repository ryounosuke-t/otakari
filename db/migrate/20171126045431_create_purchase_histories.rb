class CreatePurchaseHistories < ActiveRecord::Migration
  def change
    create_table :purchase_histories do |t|
      t.integer :item_id
      t.integer :user_id
      t.timestamps
    end
  end
end
