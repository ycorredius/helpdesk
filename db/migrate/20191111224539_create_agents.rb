class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :agentname
      t.integer :tier_support
      t.integer :comment_id
      t.integer :ticket_id
      t.timestamps null: false
    end
  end
end
