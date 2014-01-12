class RemoveColumnParameterIdFromSectors < ActiveRecord::Migration
  def change
    remove_column :sectors, :parameter_id, :string
  end
end
