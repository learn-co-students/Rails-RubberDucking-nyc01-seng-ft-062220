class StudentsController < ApplicationController

  before_action :find_student, except: [:index, :new, :create]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end
  
  def edit
  end

  def create
    if @student.create(student_params)
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def update
    if @student.update(student_params)
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

  def student_params
    params.require(:student).permit(:name, :mod)
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
