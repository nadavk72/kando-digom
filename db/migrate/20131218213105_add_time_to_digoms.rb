class AddTimeToDigoms < ActiveRecord::Migration
  def change
    add_column :digoms, :t_time, :time
  end
end
