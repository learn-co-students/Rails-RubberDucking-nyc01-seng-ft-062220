class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    @duck = Duck.create(ducks_params)

    if @duck.valid?
      redirect_to duck_path(@duck)
    else
      flash[:my_errors] = @duck.errors.full_messages
      redirect_to new_duck_path
    end
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def edit
    @duck= Duck.find(params[:id])
    @students = Student.all
  end

  def update
    @duck = Duck.new(ducks_params)
    if @duck.save
      redirect_to duck_path(@duck)
    else
      flash[:my_errors] = @duck.errors.full_messages
      redirect_to edit_duck_path
    end
  end

  private
  def ducks_params
    params.require(:duck).permit(:name,:type,:student_id)
  end


end
