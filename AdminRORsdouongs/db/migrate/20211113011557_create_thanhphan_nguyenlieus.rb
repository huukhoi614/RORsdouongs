class CreateThanhphanNguyenlieus < ActiveRecord::Migration[6.1]
  def change
    create_table :thanhphan_nguyenlieus do |t|
      t.references :nguyenlieu, null: false, foreign_key: true
      t.references :sanpham, null: false, foreign_key: true
      t.string :donvitinh
      t.float :soluong

      t.timestamps
    end
  end
end
