class Corporate < ActiveRecord::Base
	has_many :factories, dependent: :destroy
	validates :name, presence: true, uniqueness: true
end
