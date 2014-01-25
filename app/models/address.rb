class Address < ActiveRecord::Base
	belongs_to :city
	accepts_nested_attributes_for :city

	validates :city, presence: true
	validates :street, presence: true
end
