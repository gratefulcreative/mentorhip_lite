class Course < ActiveRecord::Base
  belongs_to :user

def self.search(search)
	if search
		find(:all, :conditions => ['course_type LIKE ?', "%#{search}%"])
	else
		find(:all)
	end
end




def to_param
    "#{id}-#{name}"
  end

end
