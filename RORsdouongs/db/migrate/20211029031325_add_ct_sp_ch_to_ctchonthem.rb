class AddCtSpChToCtchonthem < ActiveRecord::Migration[6.1]
  def change
   add_reference :ctchonthems, :ct_sp_ch, null: false, foreign_key: true
   remove_column :ctchonthems, :ctspham_id
  end
end
