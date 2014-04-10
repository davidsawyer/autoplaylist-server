class User < ActiveRecord::Base
    belongs_to :event
    has_many :tracks

    validates_uniqueness_of :uri
end
