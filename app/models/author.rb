class Author < ActiveRecord::Base
	has_many :books

	validates :first_name, :presence => true
	validates :last_name, :presence => true

 def full_name
    return [first_name, last_name].join(" ")
  end

end
