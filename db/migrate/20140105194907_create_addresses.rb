class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :streetNumber
      t.string :poBox
      t.integer :cityId
      t.integer :zip
      t.timestamps
    end
  end
end
