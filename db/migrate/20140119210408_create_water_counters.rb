class CreateWaterCounters < ActiveRecord::Migration
  def change
    create_table :water_counters do |t|
      t.integer :water_counter_type_id
      t.string :physical_number
      t.string :description
      t.string :coordinate
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.string :photo_updated_at
      t.string :datetime

      t.timestamps
    end
  end
end
