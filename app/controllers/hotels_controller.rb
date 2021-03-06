class HotelsController < ApplicationController

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      # TODO rename to a method descining intslef. login?
      session[:hotel_id] = @hotel.id
      redirect_to '/login', :notice => "Signed up!"
    else
      render :new
    end
  end

  def index
    redirect_to '/login'
  end

  def show
    @hotel = Hotel.find_by(id: session[:hotel_id])
    @services = Service.where(hotel_id: @hotel.id)
    @guests = Guest.where(hotel_id: @hotel.id)
    @menus = Menu.where(hotel_id: @hotel.id)
  end

  def edit
  end

  def destroy
  end

private

  def hotel_params
    params.require(:hotel).permit(:name, :email, :password, :password_confirmation, :description, :address)
  end

end
