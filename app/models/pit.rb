class Pit < ActiveRecord::Base
	belongs_to :factory
	belongs_to :pit_type
	has_attached_file :photo,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => "/pits/:id/:style/:basename.:extension"
end
