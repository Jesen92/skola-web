class Event < ActiveRecord::Base
	belongs_to :profesor
	belongs_to :group
	has_many :days, through: :picked_days
	has_many :picked_days
	belongs_to :where

	validates :group,:where,:start,:end,:start_date, presence: true

end
