class RemoveColumnPhotoFromPits < ActiveRecord::Migration
  def change
    remove_column :pits, :photo, :string
  end
end
