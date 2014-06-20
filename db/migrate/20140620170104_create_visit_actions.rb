class CreateVisitActions < ActiveRecord::Migration
  def change
    create_table :visit_actions do |t|
      t.integer :visit_id
      t.integer :user_id
      t.timestamp :server_time
      t.string :url
      t.string :referrer_url
      t.string :page_title
      t.string :page
      t.string :entity
      t.string :subject
      t.timestamp :total_time_on_action

      t.timestamps
    end
  end
end
