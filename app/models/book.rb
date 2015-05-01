class Book < ActiveRecord::Base
	belongs_to :author

	validates :title, :presence => true
	validates :author, :presence => true


def author_name
	author.try(:full_name)
end

end
