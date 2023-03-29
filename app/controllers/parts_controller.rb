class PartsController < ApplicationController
  def index
    if params[:car_id]
      @car = Car.find(params[:car_id])
      @parts = @car.parts
    else
      @parts = Part.all
    end
  end

  def show
    @part = Part.find(params[:id])
  end

  def part_params
    params.require(:part).permit(:name, :part_number, :manufacturer, :price, :description)
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to parts_path, notice: "Part was successfully created."
    else
      render :new
    end
  end

  def edit
    @part = Part.find(params[:id])
  end

  def update
    @part = Part.find(params[:id])
    if @part.update(part_params)
      redirect_to part_path(@part)
    else
      render 'edit'
    end
  end
end
