class RentingsController < ApplicationController
  def new
  @fake = Fake.find(params[:fake_id])
  @renting = Renting.new
  end

  def create
    @fake = Fake.find(params[:fake_id])
    @renting = Renting.new(renting_params)
    @renting.fake = @fake
    if @renting.save
      redirect_to fake_path(@fake)
    else
      render "fakes/show"
    end
  end

  def destroy
    @renting = renting.find(params[:id])
    @renting.destroy
    redirect_to fake_path(@renting.fake)
  end

  private

  def renting_params
    params.require(:renting).permit()
  end
end
