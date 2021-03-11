class FakesController < ApplicationController
  def index
    @fakes = Fake.where(category: params[:category])
    @category = params[:category]
    @markers = @fakes.geocoded.map do |fake|
      {
        lat: fake.latitude,
        lng: fake.longitude
      }
    end
  end

  def show
    @fake = Fake.find(params[:id])
    @renting = Renting.new
  end

  def new
    @fake = Fake.new
  end
  def profile
    # @reservations = current_user.reservations
  end
end
