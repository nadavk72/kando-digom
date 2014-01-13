class Factory < ActiveRecord::Base
belongs_to :corporate
belongs_to :sector
belongs_to :sewageFarm
belongs_to :waterSupplier
has_many :contacts, as: :contactable
belongs_to :address
belongs_to :shipping_address, :class_name => "Address"
has_and_belongs_to_many :sampling_parameters
has_attached_file :photo,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => "/factories/:id/:style/:basename.:extension"
accepts_nested_attributes_for :sampling_parameters
accepts_nested_attributes_for :contacts, allow_destroy: true
accepts_nested_attributes_for :address
accepts_nested_attributes_for :shipping_address
  default_scope -> { order('created_at DESC') }
  validates :name, presence: true, uniqueness: true
  validates :corporate_id, presence: true
  validates :sectorId, presence: true
  validates :sewageFarmId, presence: true
  validates :waterSupplierId, presence: true
end
