class CreateWaterSuppliers < ActiveRecord::Migration
  def change
    create_table :water_suppliers do |t|
      t.string :name

      t.timestamps
    end
  end
end
