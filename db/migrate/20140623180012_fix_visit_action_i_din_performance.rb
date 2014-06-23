class FixVisitActionIDinPerformance < ActiveRecord::Migration
  def change
  	rename_column :performances, :visit_id, :visit_action_id
  end
end
