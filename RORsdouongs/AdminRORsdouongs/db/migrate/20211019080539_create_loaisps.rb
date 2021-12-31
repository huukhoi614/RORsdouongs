class CreateLoaisps < ActiveRecord::Migration[6.1]
  def change
    create_table :loaisps do |t|
      t.string :tenloai

      t.timestamps
    end
  end
end
