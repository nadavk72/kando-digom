class Address < ActiveRecord::Base
	belongs_to :city
	accepts_nested_attributes_for :city
end
