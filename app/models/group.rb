class Group < ActiveRecord::Base
	has_many :uceniks
	has_many :events
	belongs_to :profesor
end
