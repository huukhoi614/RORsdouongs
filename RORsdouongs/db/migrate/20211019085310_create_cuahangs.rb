class CreateCuahangs < ActiveRecord::Migration[6.1]
  def change
    create_table :cuahangs do |t|
      t.string :tencuahang
      t.string :diachi
      t.string :sodienthoai

      t.timestamps
    end
  end
end
