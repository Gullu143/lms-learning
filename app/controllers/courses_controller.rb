class CoursesController < ApplicationController


  def index
  	@course = Course.all
  end

  def show
  end

  def edit
  end

  def new
  	@course = Course.new
  end

  def create
  	@course = current_user.courses.new(course_params)
  	if @course.save!
  		redirect_to courses_path
  	else
  		redirect_to new_course_path
  	end
  end

  private
  def course_params
  	params.require(:course).permit(:name, :teacher_ids => [])
  end

end
