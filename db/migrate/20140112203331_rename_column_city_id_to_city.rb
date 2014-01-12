class RenameColumnCityIdToCity < ActiveRecord::Migration
  def change
  	rename_column :addresses, :cityId, :city
  end
end
