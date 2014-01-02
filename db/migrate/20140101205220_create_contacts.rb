class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstName
      t.string :lastName
      t.string :role
      t.string :phone
      t.string :ext
      t.string :fax
      t.string :cellPhone
      t.string :email
      t.string :responsible
      t.references :contactable, polymorphic: true
      t.timestamps
    end
  end
end
