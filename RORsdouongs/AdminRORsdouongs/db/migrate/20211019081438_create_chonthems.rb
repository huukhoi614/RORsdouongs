class CreateChonthems < ActiveRecord::Migration[6.1]
  def change
    create_table :chonthems do |t|
      t.string :tenthanhphan
      t.integer :gia

      t.timestamps
    end
  end
end
