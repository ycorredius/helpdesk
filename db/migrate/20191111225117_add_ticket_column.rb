class AddTicketColumn < ActiveRecord::Migration
  def change
    add_column :tickets, :competed, :boolean, default: false
  end
end
