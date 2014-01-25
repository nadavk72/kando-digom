class Factory < ActiveRecord::Base
before_save :calc_physical
belongs_to :corporate
belongs_to :sector
belongs_to :sewageFarm
belongs_to :waterSupplier
has_many :contacts, as: :contactable
has_many :pits
has_many :water_counters
belongs_to :address
belongs_to :shipping_address, :class_name => "Address"
has_and_belongs_to_many :sampling_parameters
has_attached_file :photo,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => "/factories/:id/:style/:basename.:extension"
accepts_nested_attributes_for :sampling_parameters
accepts_nested_attributes_for :contacts, allow_destroy: true
accepts_nested_attributes_for :pits, allow_destroy: true
accepts_nested_attributes_for :water_counters, allow_destroy: true
accepts_nested_attributes_for :address
accepts_nested_attributes_for :shipping_address
  
  validates :name, presence: true, uniqueness: true
  validates :corporate_id, presence: true
  validates :sectorId, presence: true
  validates :sewageFarmId, presence: true
  validates :waterSupplierId, presence: true
  validates :clientNumber, presence: true

  	def calc_physical
  		ar = Array.new 
       	self.water_counters.each {|wc| ar << wc.physical_number unless  wc._destroy}
              if ar.blank?
                 self.physicalNumber = ''
               else
                 self.physicalNumber = ar.join ', '
              end
  	end
	
	def self.search(search)
	  if search
	    where("name LIKE ? 
	    	or \"clientNumber\" LIKE ? 
	    	or \"physicalNumber\" LIKE ?",
	    	 "%#{search}%" , "%#{search}%", "%#{search}%")
	  else
	    scoped
	  end
	end
end
