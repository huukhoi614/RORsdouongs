class CreateVanchuyens < ActiveRecord::Migration[6.1]
  def change
    create_table :vanchuyens do |t|
      t.integer :khoangcach
      t.integer :dongia

      t.timestamps
    end
  end
end
