class Ucenik < ActiveRecord::Base
	has_many :groups, through: :group_uceniks
	has_many :group_uceniks
end
