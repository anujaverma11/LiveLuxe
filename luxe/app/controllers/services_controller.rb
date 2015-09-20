class ServicesController < ApplicationController
  def index
    redirect_to hotel_path
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      @guest = Guest.find(session[:guest_id])
      @service.hotel_id = @guest.hotel_id
      @service.guest_id = session[:guest_id]
      @service.save
    end
    redirect_to :back
  end

  def show
    @service = Service.find_by(id: params[:id])
  end

  def edit
  end

  def destroy
    @service = Service.find_by(id: params[:id])
    @service.destroy
  end

  private

  def service_params
    p params
    params.require(:service).permit(:title, :starts_at_date, :starts_at_time, :special_request)
  end
end
