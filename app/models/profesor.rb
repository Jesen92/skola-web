class Profesor < ActiveRecord::Base
	has_one :user
	has_many :groups
	has_many :events

	#validates_attachment_content_type :document, :content_type => ['application/pdf', 'application/msword', 'text/plain']
end
