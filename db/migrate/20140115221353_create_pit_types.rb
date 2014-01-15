class CreatePitTypes < ActiveRecord::Migration
  def change
    create_table :pit_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
