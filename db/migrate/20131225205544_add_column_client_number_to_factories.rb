class AddColumnClientNumberToFactories < ActiveRecord::Migration
  def change
    add_column :factories, :clientNumber, :string
    add_column :factories, :address, :string
    add_column :factories, :cityId, :integer
    add_column :factories, :sectorId, :integer
    add_column :factories, :physicalNumber, :string
    add_column :factories, :sewageFarmId, :integer
    add_column :factories, :arrangement, :boolean
    add_column :factories, :waterSupplierId, :integer
    add_column :factories, :isActive, :boolean
  end
end
