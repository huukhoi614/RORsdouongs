class CreateQuatangs < ActiveRecord::Migration[6.1]
  def change
    create_table :quatangs do |t|
      t.integer :soluongmua
      t.integer :soluongtang
      t.float :giamgiathem
      t.references :ctkhuyenmai, null: false, foreign_key: true

      t.timestamps
    end
  end
end
