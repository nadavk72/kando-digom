class AddPhToDigom < ActiveRecord::Migration
  def change
    add_column :digoms, :PH, :string
    add_column :digoms, :conductivity, :string
  end
end
