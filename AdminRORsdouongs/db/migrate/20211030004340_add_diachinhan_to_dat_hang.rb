class AddDiachinhanToDatHang < ActiveRecord::Migration[6.1]
  def change
    add_column :dathangs, :diachinhan, :string
  end
end
