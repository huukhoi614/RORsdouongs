class CreateCtsphams < ActiveRecord::Migration[6.1]
  def change
    create_table :ctsphams do |t|
      t.references :sanpham, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true

      t.timestamps
    end
    add_index :ctsphams, [:sanpham_id,:size_id], :unique => true
  end
end
