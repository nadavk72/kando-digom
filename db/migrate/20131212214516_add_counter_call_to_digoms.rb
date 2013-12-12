class AddCounterCallToDigoms < ActiveRecord::Migration
  def change
    add_column :digoms, :counter_call, :string
  end
end
