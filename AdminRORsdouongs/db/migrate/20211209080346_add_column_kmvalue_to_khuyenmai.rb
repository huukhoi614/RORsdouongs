class AddColumnKmvalueToKhuyenmai < ActiveRecord::Migration[6.1]
  def change
    add_column :khuyenmais, :Kmvalue, :boolean
  end
end
