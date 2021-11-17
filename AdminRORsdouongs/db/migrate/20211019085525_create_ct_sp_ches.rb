class CreateCtSpChes < ActiveRecord::Migration[6.1]
  def change
    create_table :ct_sp_ches do |t|
      t.references :ctchonthem, null: false, foreign_key: true
      t.references :cuahang, null: false, foreign_key: true

      t.timestamps
    end
  end
end
