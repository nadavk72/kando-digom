class CreateFactoriesSamplingParameters < ActiveRecord::Migration
  def change
    create_table :factories_sampling_parameters do |t|
    	t.belongs_to :sampling_parameter
      	t.belongs_to :factory
    end
  end
end
