class AddPhotoColumnToFactories < ActiveRecord::Migration
  def change
  	add_column :factories, :photo_file_name, :string
	add_column :factories, :photo_content_type, :string
	add_column :factories, :photo_file_size, :integer
	add_column :factories, :photo_updated_at, :datetime
  end
end
