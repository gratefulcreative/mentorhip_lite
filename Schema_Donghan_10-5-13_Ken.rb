User, Course, Devise


rails g model User firstname:string lastname:string pwd:string secret_question:string verified:boolean gender:string birthdate:datetime phone:string photo:string address1:string address2:string city:string state:string zipcode:integer likes:integer weburl:string biography:string education:string watchlist1:string watchlist2:string watchlist3:string communication_preferences1:boolean communication_preferences2:boolean communication_preferences3:boolean communication_pr
eferences4:boolean

class User 
	has_many :course
end

rails generate model Course name:string course_type:string price:float description:text user:references address1:string address2:string city:string state:string zipcode:integer photo1:string photo2:string photo3:string min_age:integer max_age:integer min_class_size:integer max_class_size:integer required_gear:boolean required_gear_desc:text cancellation:text
class Course
	has_many :course_time :order
	belongs_to :user 
end

rails generate model Review comment:string rating:integer commenter:string anonymous:boolean course:references user:references # user refers to purchaser


rails generate model CourseTime start:time end:time dayofweek:string course:references


rails generate model Order ip:string firstname:string lastname:string card_type:string card_number:string card_expires_on:date cvc:integer email:string confirmation_id:string
class Order
	belongs_to :user :course
	has_one :transaction
end

rails generate model Transcation approved:boolean order:references created_at:datetime updated_at:datetime

rails generate model Kid firstname:string lastname:string gender:string birthdate:date memo:text

# after Order being successfully placed, the purchaser should be able to have their kid enrolled, and the provider should be able to view the enrollment list.
rails generate model Enrollment course:references kid:references order:references
