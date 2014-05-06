class AddColumnsToTicket < ActiveRecord::Migration
  def change
  	add_column :tickets, :creator_id, :integer
  	add_column :tickets, :responsible_id, :integer
  end
end
