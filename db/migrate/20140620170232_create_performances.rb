class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :visit_id

      t.timestamps
    end
  end
end
