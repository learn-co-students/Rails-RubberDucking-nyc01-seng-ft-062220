class StudentsController < ApplicationController

  before_action :find_student, only: [:show,:destroy,:edit,:update]

  def index
    @students = Student.all
  end

  def new 
    @student = Student.new
  end

  def create 

    @student = Student.create(student_params)

    if @student.valid?
      redirect_to student_path(@student)
    else
      render :new
    end

  end

  def show 
    @ducks = @student.ducks
  end

  def edit 
  end

  def update

    if @student.update(student_params)
      @student.update(student_params)
      redirect_to student_path(@student)
    else
      render :edit
    end

  end

  def destroy 
    @student.destroy
    redirect_to students_path
  end

  private 

  def find_student 
    @student = Student.find(params[:id])
  end

  def student_params 
    params.require(:student).permit(:name, :mod)
  end

end
