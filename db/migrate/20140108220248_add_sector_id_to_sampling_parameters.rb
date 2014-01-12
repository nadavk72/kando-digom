class AddSectorIdToSamplingParameters < ActiveRecord::Migration
  def change
    add_column :sampling_parameters, :sector_id, :integer
  end
end
