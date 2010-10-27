class Article < ActiveRecord::Base
	belongs_to :group

	validates_presence_of :title, :content
	has_many :comments, :dependent => :destroy
end
