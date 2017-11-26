class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :text
    add_column :users, :nickname, :text
    add_column :users, :review_id, :integer
    add_column :users, :phone_number, :text


  end
end
