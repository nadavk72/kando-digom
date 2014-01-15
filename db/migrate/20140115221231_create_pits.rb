class CreatePits < ActiveRecord::Migration
  def change
    create_table :pits do |t|
      t.string :name
      t.string :photo
      t.string :description
      t.string :coordinate
      t.integer :scheduled_short_sampling
      t.integer :scheduled_complex_sampling
      t.integer :pit_type_id
      t.integer :factory_id

      t.timestamps
    end
  end
end
