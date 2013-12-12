class Digom < ActiveRecord::Base

	validates  :digomId, uniqueness: true
	
	before_create :create_digomId
	

	def create_digomId
    self.digomId = "#{factory} | #{Time.now.to_formatted_s(:db) }"
  end
end
