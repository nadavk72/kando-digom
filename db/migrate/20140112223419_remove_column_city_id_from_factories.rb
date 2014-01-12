class RemoveColumnCityIdFromFactories < ActiveRecord::Migration
  def change
    remove_column :factories, :cityId, :string
  end
end
