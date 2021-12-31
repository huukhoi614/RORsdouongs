class CreateDathangs < ActiveRecord::Migration[6.1]
  def change
    create_table :dathangs do |t|
      t.date :ngaydat
      t.date :ngayduyet
      t.date :ngaygiao
      t.date :ngaynhan
      t.string :hinhthucmua
      t.integer :phiship
      t.integer :tonggia
      t.references :order_status, null: false, foreign_key: true
      t.references :vanchuyen, null: false, foreign_key: true
      t.references :khachhang, null: false, foreign_key: true
      t.references :cuahang, null: false, foreign_key: true

      t.timestamps
    end
    remove_column :ct_sp_ches, :cuahang_id
    add_reference :ct_sp_ches, :dathang, null: false, foreign_key: true
    add_column :ct_sp_ches, :soluong , :integer
    add_column :ct_sp_ches, :giact , :integer
    remove_column :ctchonthems, :ct_sp_ch_id
    add_reference :ctchonthems, :ctspham, null: false, foreign_key: true
  end
end
