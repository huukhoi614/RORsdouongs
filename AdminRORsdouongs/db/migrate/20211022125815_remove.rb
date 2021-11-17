class Remove < ActiveRecord::Migration[6.1]
  def change
  	remove_column :ct_sp_ches, :ctchonthem_id
  end
end
