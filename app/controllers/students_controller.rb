class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    student_helper
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    
    if @student.valid?
      redirect_to student_path(@student)
    else
      redirect_to new_student_path(@student)
    end
  end

  def edit
    student_helper
  end

  def update
    student_helper.update(student_params)
    redirect_to student_path(@student)
  end


  private

  def student_helper
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :mod)
  end

end
