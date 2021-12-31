class CreateKhachhangs < ActiveRecord::Migration[6.1]
  def change
    create_table :khachhangs do |t|
      t.string :tenKH
      t.string :diachi
      t.string :sodienthoai

      t.timestamps
    end
    add_index :khachhangs , :sodienthoai, :unique => true
  end
end
