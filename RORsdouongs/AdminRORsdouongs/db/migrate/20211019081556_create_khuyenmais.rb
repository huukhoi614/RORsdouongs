class CreateKhuyenmais < ActiveRecord::Migration[6.1]
  def change
    create_table :khuyenmais do |t|
      t.string :tendot
      t.date :ngayBD
      t.date :ngayKT

      t.timestamps
    end
  end
end
