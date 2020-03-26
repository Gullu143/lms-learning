class TeachersController < ApplicationController

  def index
  	@teacher = Teacher.all
  end

  def teacher_courses
    @courses = current_teacher.courses
  end


  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
  end

  def new
  	@teacher = Teacher.new
  end

  def create_new_teacher
  	@teacher = current_user.teachers.new(teacher_params)
  	 if @teacher.save!
  		  redirect_to teachers_path, notice: 'successfully created teacher.'
  	else
  		redirect_to new_teacher_path, notice: 'try again'
  	end
  end

  private
  def teacher_params
  	params.require(:teacher).permit(:email, :password, :password_confirmation, :user_id)
  end
end
