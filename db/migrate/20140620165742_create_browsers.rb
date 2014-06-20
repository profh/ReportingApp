class CreateBrowsers < ActiveRecord::Migration
  def change
    create_table :browsers do |t|
      t.integer :visit_id

      t.timestamps
    end
  end
end
