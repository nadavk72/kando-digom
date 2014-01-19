class WaterCounter < ActiveRecord::Base
	belongs_to :factory
	belongs_to :water_counter_type
	belongs_to :pit
	has_attached_file :photo,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => "/water_counter/:id/:style/:basename.:extension"
end
