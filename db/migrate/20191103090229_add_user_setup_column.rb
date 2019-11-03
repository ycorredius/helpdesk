class AddUserSetupColumn < ActiveRecord::Migration
  def change
    add_column :users, :set_up, :boolean , default: false
  end
end
