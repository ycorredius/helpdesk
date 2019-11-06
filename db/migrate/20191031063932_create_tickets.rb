class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :short_description
      t.string :content
      t.integer :tier_id , default: 1
    end
  end
end
