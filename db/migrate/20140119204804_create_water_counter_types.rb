class CreateWaterCounterTypes < ActiveRecord::Migration
  def change
    create_table :water_counter_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
