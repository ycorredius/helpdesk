class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :statement
      t.integer :user_id
      t.integer :ticket_id
      t.datetime :time_created, limit: 6
    end
  end
end
