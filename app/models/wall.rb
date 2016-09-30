class Wall < ActiveRecord::Base
	belongs_to :user
	has_many :nodes, dependent: :destroy
end
