class AddColumnLoaispToCtkhuyenmai < ActiveRecord::Migration[6.1]
  def change
    add_reference :ctkhuyenmais, :loaisp, null: false, foreign_key: true
   	remove_column :ctkhuyenmais, :ct_sp_ch_id
  end
end
