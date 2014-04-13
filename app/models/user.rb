class User < ActiveRecord::Base

    belongs_to :event
    has_many :tracks, dependent: :destroy

    validates_uniqueness_of :uri

    accepts_nested_attributes_for :tracks

end
