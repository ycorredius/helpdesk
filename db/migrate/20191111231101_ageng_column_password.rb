class AgengColumnPassword < ActiveRecord::Migration
  def change
    add_column :agents, :password_digets, :stirng
  end
end
