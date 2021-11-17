class AddColumnGiatpToCtchonthem < ActiveRecord::Migration[6.1]
  def change
    add_column :ctchonthems, :gia, :integer
  end
end
