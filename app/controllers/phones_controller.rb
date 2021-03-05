class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end
  
  def show
    @phone = Phone.find(params[:id])
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save
      redirect_to phones_path
    else
      redirect_to new_phone_path
      flash[:notice1] = "Name can't be empty"
      flash[:notice2] = "Storage can't be 0"
      flash[:notice3] = "Storage must be even"
    end
    
  end

  def edit
    @phone = Phone.find(params[:id])
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update(phone_params)
      redirect_to phones_path
    else
      redirect_to request.referrer
      flash[:notice1] = "Name can't be empty"
      flash[:notice2] = "Storage can't be 0"
      flash[:notice3] = "Storage must be even"
    end
    
    
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy
    redirect_to phones_path
  end
  
  private

  def phone_params
    params.require(:phone).permit(:name, :brand, :imei, :color, :storage)
  end
end
