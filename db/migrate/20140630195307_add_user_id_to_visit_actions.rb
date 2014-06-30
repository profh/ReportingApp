class AddUserIdToVisitActions < ActiveRecord::Migration
  def change
    add_column :visit_actions, :user_id, :integer
  end
end
