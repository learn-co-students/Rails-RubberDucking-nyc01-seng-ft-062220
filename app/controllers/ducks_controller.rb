class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show 
    duck_helper
  end

  def new
    @duck = Duck.new

    @students = Student.all
  end

  def create
    @duck = Duck.create(duck_params)

    if @duck.valid?
      redirect_to duck_path(@duck)
    else 
      redirect_to new_duck_path
    end
  end

  def edit
    duck_helper
  end

  def update 
    duck_helper.update(duck_params)
    redirect_to duck_path(@duck)
  end


  private

  def duck_helper
    @duck = Duck.find(params[:id])
  end

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end


end
