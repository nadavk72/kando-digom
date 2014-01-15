class Pit < ActiveRecord::Base
	belongs_to :factory
	belongs_to :pit_type
end
