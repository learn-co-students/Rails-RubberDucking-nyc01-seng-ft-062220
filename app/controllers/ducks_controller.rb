class DucksController < ApplicationController

  def index
    @ducks = Duck.all
    
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    @students = Student.all 
  end 

  def create
    @duck = Duck.new(s_params)
    @duck.save 
    redirect_to ducks_path
  end 

  def edit
    @duck = Duck.find(params[:id])
    @students = Student.all
  end 

  def update
    @duck = Duck.find(params[:id])
    @duck.update(s_params) 
    redirect_to duck_path(@duck)
  end 


  private

  def s_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
end
