class Event < ActiveRecord::Base
	belongs_to :profesor
	belongs_to :group

	validates :group, presence: true
end
