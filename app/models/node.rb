class Node < ActiveRecord::Base
	belongs_to :user
	has_many :documents, dependent: :destroy
	acts_as_tree
	extend ActsAsTree::TreeWalker

end
