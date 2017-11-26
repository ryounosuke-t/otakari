class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :title
      t.text :description
      t.text :category
      t.integer :price
      t.text :export_option
      t.text :image
      t.text :tag
      t.integer :stock
      t.integer :nice_point
      t.integer :user_id
      t.integer :request_id
      t.timestamps
    end
  end
end
