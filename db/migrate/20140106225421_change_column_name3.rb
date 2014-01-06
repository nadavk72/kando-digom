class ChangeColumnName3 < ActiveRecord::Migration
  def change
  	rename_column :factories, :mailingAddress, :shipping_address_id
  end
end
