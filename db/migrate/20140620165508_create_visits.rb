class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.datetime :first_action_time
      t.datetime :last_action_time
      t.string :entry_url
      t.string :exit_url
      t.integer :total_events
      t.timestamp :total_time
      t.integer :total_searches

      t.timestamps
    end
  end
end
