class Course < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :name, :course_type, :description, :photo1, :state, :photo1_file_name

  mount_uploader :photo1, Photo1Uploader



#has_attached_file :photo1, :styles => { :medium => "300x300>", :thumb => "100x100>" }#, :default_url => "/images/course/.png"


def self.search(search)
	if search
		find(:all, :conditions => ['course_type LIKE ?', "%#{search}%"], :order =>'created_at DESC')
	else
		find(:all)
	end
end



def to_param
    "#{id}-#{name}"
  end

end
