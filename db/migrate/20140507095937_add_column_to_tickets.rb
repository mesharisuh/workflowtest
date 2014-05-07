class AddColumnToTickets < ActiveRecord::Migration
  def change
  	add_column :tickets, :closed, :boolean
  end
end
