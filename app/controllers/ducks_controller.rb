class DucksController < ApplicationController
  before_action :set_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end
  
  def new
    @duck = Duck.new
  end

  def show
  end

  def create
    @duck = Duck.new(duck_params)
    if @duck.save
      redirect_to @duck
    else
      flash[:error_message] = @duck.errors.full_messages
      redirect_to new_duck_path(@duck)
    end
  end

  def edit
  end

  def update
    if @duck.update(duck_params)
      redirect_to @duck
    else
      flash[:error_message] = @duck.errors.full_messages
      redirect_to edit_duck_path(@duck)
    end
  end


  private

  def set_duck
    @duck = Duck.find(params[:id])
  end

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

end
