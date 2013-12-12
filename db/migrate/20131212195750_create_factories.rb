class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :name
      t.integer :corporate_id

      t.timestamps
    end
    add_index :microposts, [:corporate_id, :created_at]
  end
end
