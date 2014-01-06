class AddFactoryAddress < ActiveRecord::Migration
  def change
  	add_column :factories, :factoryAddress, :integer
  	add_column :factories, :mailingAddress, :integer
  end
end
