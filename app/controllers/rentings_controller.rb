class RentingsController < ApplicationController
  def new
  @fake = Fake.find(params[:fake_id])
  @renting = Renting.new
  end

  def create
    @fake = Fake.find(params[:fake_id])
    @renting = Renting.new(renting_params)
    @renting.fake = @fake
    @renting.user = current_user
   @renting.price = ((@renting.end_date - @renting.start_date).to_i)*@fake.price
    if @renting.save
      redirect_to dashboard_path(current_user)
    else
      render "fakes/show"
    end
  end

  def destroy
    @renting = Renting.find(params[:id])
    @renting.destroy
    redirect_to dashboard_path
  end

  private

  def renting_params
    params.require(:renting).permit(:start_date, :end_date)
  end
end
