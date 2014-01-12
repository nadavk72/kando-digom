class CreateSamplingParametersSectors < ActiveRecord::Migration
  def change
    create_table :sampling_parameters_sectors do |t|
      t.belongs_to :sampling_parameter
      t.belongs_to :sector
    end
  end
end
