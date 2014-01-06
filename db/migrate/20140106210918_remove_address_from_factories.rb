class RemoveAddressFromFactories < ActiveRecord::Migration
  def change
    remove_column :factories, :address, :string
  end
end
