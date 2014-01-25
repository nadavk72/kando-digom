class Sector < ActiveRecord::Base
	has_and_belongs_to_many :sampling_parameters
	accepts_nested_attributes_for :sampling_parameters

	validates :name, presence: true, uniqueness: true
end
