class ChangeColumnName2 < ActiveRecord::Migration
  def change
  	rename_column :factories, :factoryAddress, :address_id
  end
end
