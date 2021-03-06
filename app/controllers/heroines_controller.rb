class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroines_path
    else
      render 'new'
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end