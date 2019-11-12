class AddCommentidTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :comment_id, :integer
  end
end
