class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :visit_action_id
      t.string :event_category
      t.string :event_action
      t.string :event_label
      t.string :event_value
      t.string :custom

      t.timestamps
    end
  end
end
