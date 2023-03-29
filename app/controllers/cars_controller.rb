class CarsController < ApplicationController
  def index
    @cars = Car.order(created_at: :desc)
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def car_params
    params.require(:car).permit(:make, :model, :year)
  end
  
  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path, notice: "Car was successfully created."
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render 'edit'
    end
  end
end
