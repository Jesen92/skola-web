class Profesor < ActiveRecord::Base
	has_one :user
	has_many :groups
	has_many :events
end
