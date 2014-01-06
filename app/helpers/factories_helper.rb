module FactoriesHelper

	def create_addresses	
		@factory.address = Address.new
    	@factory.shipping_address = Address.new
	end
end
