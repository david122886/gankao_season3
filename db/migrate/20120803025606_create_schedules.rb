class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
