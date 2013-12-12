class AddOwnerToDigoms < ActiveRecord::Migration
  def change
    add_column :digoms, :owner, :string
  end
end
