class AddUserToKhachhang < ActiveRecord::Migration[6.1]
  def change
   	add_column :khachhangs, :hashed_password, :string
    add_column :khachhangs, :salt, :string
    add_column :khachhangs, :point, :int
  end
end
