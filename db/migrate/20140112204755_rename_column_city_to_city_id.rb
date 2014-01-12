class RenameColumnCityToCityId < ActiveRecord::Migration
  def change
  	rename_column :addresses, :city, :city_id
  end
end
