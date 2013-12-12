class AddDDateToDigoms < ActiveRecord::Migration
  def change
    add_column :digoms, :d_date, :date
  end
end
