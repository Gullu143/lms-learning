class CoursesController < ApplicationController


  def index
  end

  def show
  end

  def edit
  end

  def new
  	@course = Course.new
  end

  private
  def course_params
  	params.require(:course).permit(:name)
  end

end
