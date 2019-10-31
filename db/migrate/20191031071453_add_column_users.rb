class AddColumnUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :integer
    add_column :users, :company, :string
  end
end
