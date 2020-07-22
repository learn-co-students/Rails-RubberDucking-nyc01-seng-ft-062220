class DucksController < ApplicationController

  before_action :find_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
    render :index
  end

  def show
    #@duck = Duck.find(params[:id])
    render :show
  end

  def new
    @duck = Duck.new
    render :new
  end

  def create
   duck = Duck.create(duck_params)

   redirect_to duck_path(duck)
  end

  def edit
   # @duck = Duck.find(params[:id])

  end

  def update
  #  @duck = Duck.find(params[:id])

    @duck.update(duck_params)

    redirect_to duck_path(@duck)
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end


end
