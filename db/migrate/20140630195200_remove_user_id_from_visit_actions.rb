class RemoveUserIdFromVisitActions < ActiveRecord::Migration
  def change
    remove_column :visit_actions, :user_id, :integer
  end
end
