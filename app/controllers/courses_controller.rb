class CoursesController < ApplicationController

before_action :set_course, only: [:show, :edit, :update, :destroy]
#before_filter :authenticate_user!

def index
  @search = Course.search(params[:q])
  @courses = @search.result
  @courses = Course.all

  respond_to do |format|
        format.html
        format.json {render json: @courses}
        #format.xml {render xml: @courses}
  end
end

def new
  @course = Course.new
end

def create
  @course = Course.new(course_params)
  respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created }
        #format.json { render action: 'show', status: :created, location: @recipe }
      else
         format.html { render action: 'new' }
         format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end



  #render text: params[:course].inspect
  #@course = Course.new(params[:id])

end

def show
    @course = Course.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @course}
    end
end


def edit
end



def update
 respond_to do |format|
   if @course.update(course_params) 
     format.html{redirect_to @course, notice: 'Course successfully updated.'}
     format.json{head :no_content}
   else
     format.html{render action: 'edit'}
     format.json {render json: @course.errors, status: :unprocessable_entity }
   end
 end
end

def destroy
@course.destroy
  respond_to do |format|
    format.html { redirect_to courses_url }
    format.json { head :no_content }
  end
 end


 private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :course_type, :price, :address1, :address2, :city, :state, :zipcode, :photo1, :photo2, :photo3, :min_age, :max_age, :min_class_size, :max_class_size, :required_gear, :required_gear_desc, :cancellation)
    end

end
