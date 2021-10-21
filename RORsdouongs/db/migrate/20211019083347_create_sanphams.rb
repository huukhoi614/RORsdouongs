class CreateSanphams < ActiveRecord::Migration[6.1]
  def change
    create_table :sanphams do |t|
      t.string :tensanpham
      t.references :loaisp, null: false, foreign_key: true
      t.text :mota
      t.text :anh

      t.timestamps
    end
  end
end
