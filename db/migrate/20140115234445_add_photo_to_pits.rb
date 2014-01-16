class AddPhotoToPits < ActiveRecord::Migration
  def change
  	add_column :pits, :photo_file_name, :string
	add_column :pits, :photo_content_type, :string
	add_column :pits, :photo_file_size, :integer
	add_column :pits, :photo_updated_at, :datetime
  end
end
