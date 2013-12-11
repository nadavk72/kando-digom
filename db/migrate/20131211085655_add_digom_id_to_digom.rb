class AddDigomIdToDigom < ActiveRecord::Migration
  def change
    add_column :digoms, :digomId, :string
  end
end
