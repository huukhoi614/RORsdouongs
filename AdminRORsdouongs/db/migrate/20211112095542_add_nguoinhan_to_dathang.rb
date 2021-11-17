class AddNguoinhanToDathang < ActiveRecord::Migration[6.1]
  def change
    add_column :dathangs, :nguoinhan, :string
  end
end
