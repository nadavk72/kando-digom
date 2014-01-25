class Contact < ActiveRecord::Base
	RESPONSIBLE_TYPES = ["contact_type_general", "contact_type_meetings", "contact_type_letters", "contact_type_samplings"]
	belongs_to :contactable, polymorphic: true

	validates :firstName, presence: true, :uniqueness => {:scope => [:contactable_id, :contactable_type, :lastName]}
	validates :lastName, presence: true, :uniqueness => {:scope => [:contactable_id, :contactable_type, :firstName]}

end
