class CreateSewageFarms < ActiveRecord::Migration
  def change
    create_table :sewage_farms do |t|
      t.string :name

      t.timestamps
    end
  end
end
