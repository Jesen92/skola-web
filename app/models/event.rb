class Event < ActiveRecord::Base
	belongs_to :profesor
	belongs_to :group
	has_many :days, through: :picked_days
	has_many :picked_days

	validates :group, presence: true

end
