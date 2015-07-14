class SingleEvent < ActiveRecord::Base
	belongs_to :profesor
	belongs_to :group
	belongs_to :where
	belongs_to :event
end
