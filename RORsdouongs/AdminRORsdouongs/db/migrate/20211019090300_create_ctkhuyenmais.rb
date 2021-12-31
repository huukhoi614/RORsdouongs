class CreateCtkhuyenmais < ActiveRecord::Migration[6.1]
  def change
    create_table :ctkhuyenmais do |t|
      t.float :tylegiam
      t.references :khuyenmai, null: false, foreign_key: true
      t.references :ct_sp_ch, null: false, foreign_key: true
      t.timestamps
    end
  end
end
