class CreateThongkes < ActiveRecord::Migration[6.1]
  def change
    create_table :thongkes do |t|
      t.date :ngaythongke

      t.timestamps
    end
  end
end
