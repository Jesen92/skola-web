class Group < ActiveRecord::Base
	has_many :uceniks
	belongs_to :profesor
end
