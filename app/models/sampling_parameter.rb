class SamplingParameter < ActiveRecord::Base
	has_and_belongs_to_many :sectors
	has_and_belongs_to_many :factories
end
