class Factory < ActiveRecord::Base
belongs_to :corporate
belongs_to :city
belongs_to :sector
belongs_to :sewageFarm
belongs_to :waterSupplier
has_many :contacts, as: :contactable
accepts_nested_attributes_for :contacts, allow_destroy: true
  default_scope -> { order('created_at DESC') }
  validates :name, presence: true, uniqueness: true
  validates :corporate_id, presence: true
  validates :cityId, presence: true
  validates :sectorId, presence: true
  validates :sewageFarmId, presence: true
  validates :waterSupplierId, presence: true

end
