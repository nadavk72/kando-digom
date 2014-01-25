class Pit < ActiveRecord::Base
	belongs_to :factory
	belongs_to :pit_type
	has_attached_file :photo,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => "/pits/:id/:style/:basename.:extension"

    validates :name, presence: true, :uniqueness => {scope: :factory}
    validates :description, presence: true
    validates :scheduled_short_sampling, presence: true,  numericality: true
    validates :scheduled_complex_sampling, presence: true,  numericality: true
end
