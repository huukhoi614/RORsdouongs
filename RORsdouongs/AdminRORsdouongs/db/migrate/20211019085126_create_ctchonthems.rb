class CreateCtchonthems < ActiveRecord::Migration[6.1]
  def change
    create_table :ctchonthems do |t|
      t.references :ctspham, null: false, foreign_key: true
      t.references :chonthem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
