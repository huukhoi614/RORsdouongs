class CreateBanggia < ActiveRecord::Migration[6.1]
  def change
    create_table :banggia do |t|
      t.integer :gia
      t.date :ngaycapnhat
      t.references :ctspham, null: false, foreign_key: true

      t.timestamps
    end
  end
end
