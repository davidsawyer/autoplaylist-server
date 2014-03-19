class User < ActiveRecord::Base
	
	has_many :tracks
	belongs_to :event

	validates_uniqueness_of :id

	self.primary_key = "id"

end
