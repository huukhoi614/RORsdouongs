class AddCtchonthemToCtSpChes < ActiveRecord::Migration[6.1]
  def change
    add_reference :ct_sp_ches, :ctchonthem, null: false, foreign_key: true
  end
end
