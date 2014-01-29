class AddMapToFactories < ActiveRecord::Migration
  def change
    add_column :factories, :map_file_name, :string
    add_column :factories, :map_content_type, :string
    add_column :factories, :map_file_size, :integer
    add_column :factories, :map_updated_at, :datetime
  end
end
