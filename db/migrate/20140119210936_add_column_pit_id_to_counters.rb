class AddColumnPitIdToCounters < ActiveRecord::Migration
  def change
    add_column :water_counters, :pit_id, :integer
  end
end
