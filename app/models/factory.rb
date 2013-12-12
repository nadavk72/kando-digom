class Factory < ActiveRecord::Base
belongs_to :corporate
  default_scope -> { order('created_at DESC') }
  validates :name, presence: true, uniqueness: true
  validates :corporate_id, presence: true
end
