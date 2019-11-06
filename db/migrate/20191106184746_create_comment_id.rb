class CreateCommentId < ActiveRecord::Migration
  def change
    add_column :tickets, :comment_id, :string
  end
end
