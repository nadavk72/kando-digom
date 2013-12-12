class Digom < ActiveRecord::Base

	validates  :digomId, uniqueness: true
	
	 before_validation :create_digomId
	

	def create_digomId
    self.digomId = "#{factory} | #{d_date }"
  end
end
