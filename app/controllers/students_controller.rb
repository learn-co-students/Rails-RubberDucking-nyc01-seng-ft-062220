class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new 
  end

  def create
    @student = Student.new(s_params)
    @student.save 
    redirect_to student_path(@student)
  end

  def edit 
    @student = Student.find(params[:id])
  end 

  def update
    @student = Student.find(params[:id])
    @student.update(s_params)
    redirect_to student_path(@student)
  end


  private

  def s_params
    params.require(:student).permit(:name, :mod)
  end

end
