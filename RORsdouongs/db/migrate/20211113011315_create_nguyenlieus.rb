class CreateNguyenlieus < ActiveRecord::Migration[6.1]
  def change
    create_table :nguyenlieus do |t|
      t.string :tenNL

      t.timestamps
    end
  end
end
