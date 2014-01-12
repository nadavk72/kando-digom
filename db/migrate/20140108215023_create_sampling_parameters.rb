class CreateSamplingParameters < ActiveRecord::Migration
  def change
    create_table :sampling_parameters do |t|
      t.string :name

      t.timestamps
    end
  end
end
