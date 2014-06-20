class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.datetime :user_day_since_last
      t.datetime :user_day_since_first
      t.boolean :user_returning
      t.integer :user_visit_count

      t.timestamps
    end
  end
end
