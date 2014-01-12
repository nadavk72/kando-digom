class CreateSectorsSamplingParameters < ActiveRecord::Migration
  def change
    create_table :sectors_sampling_parameters do |t|
      t.belongs_to :sector
      t.belongs_to :sampling_parameter
    end
  end
end
