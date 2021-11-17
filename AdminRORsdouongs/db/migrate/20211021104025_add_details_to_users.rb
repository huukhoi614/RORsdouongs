class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :point, :int
    add_index :users, :phone
  end
end
