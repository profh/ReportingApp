class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :visit_id

      t.timestamps
    end
  end
end
