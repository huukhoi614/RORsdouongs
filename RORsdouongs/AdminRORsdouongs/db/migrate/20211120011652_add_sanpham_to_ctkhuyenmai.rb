class AddSanphamToCtkhuyenmai < ActiveRecord::Migration[6.1]
  def change
    add_reference :ctkhuyenmais, :sanpham, null: false, foreign_key: true
    remove_column :ctkhuyenmais, :loaisp_id
  end
end
