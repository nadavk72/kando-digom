class CreateDigoms < ActiveRecord::Migration
  def change
    create_table :digoms do |t|
      t.string :corp
      t.string :factory
      t.string :persents
      t.integer :numOfFlows
      t.string :flowType
      t.string :notes
      t.string :lab
      t.string :samplerName
      t.string :parameters
      t.boolean :executed

      t.timestamps
    end
  end
end
