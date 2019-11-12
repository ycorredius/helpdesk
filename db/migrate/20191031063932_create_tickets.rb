class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :short_description
      t.string :content
      t.integer :user_id
      t.integer :tier_id , default: 1
      t.datetime :ticket_created, limit: 6
    end
  end
end
