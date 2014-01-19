class AddColumnFactoryIdToWaterCounters < ActiveRecord::Migration
  def change
    add_column :water_counters, :factory_id, :integer
  end
end
