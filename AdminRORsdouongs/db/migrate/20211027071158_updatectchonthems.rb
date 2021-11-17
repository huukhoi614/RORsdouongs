class Updatectchonthems < ActiveRecord::Migration[6.1]
  def change
  	remove_column :ct_sp_ches, :ctchonthem_id
  	add_reference :ctchonthems, :ct_sp_ch, null: false, foreign_key: true
  	remove_column :ctchonthems, :ctspham_id
  	add_reference :ct_sp_ches, :ctspham, null: false, foreign_key: true
  	
  end
end
