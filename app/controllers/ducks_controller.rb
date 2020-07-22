class DucksController < ApplicationController

  before_action :find_duck, except: [:index, :new, :create]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new
    @duck = Duck.new
  end

  def edit
  end


  def create
    byebug
    @duck = Duck.new(duck_params)
    
    if @duck.save
      redirect_to duck_path(@duck)
    else
      render :new
    end
  end

  def update
    if @duck.update(duck_params)
      redirect_to duck_path(@duck)
    else
      render :edit
    end
  end

  def destroy
    @duck.destroy

    redirect_to ducks_path
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end

end
