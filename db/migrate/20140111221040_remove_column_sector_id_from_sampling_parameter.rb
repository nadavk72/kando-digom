class RemoveColumnSectorIdFromSamplingParameter < ActiveRecord::Migration
  def change
    remove_column :sampling_parameters, :sector_id, :string
  end
end
