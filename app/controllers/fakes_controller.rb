class FakesController < ApplicationController
  def index
    @fakes = Fake.where(category: params[:category])
    @category = params[:category]
    @markers = @fakes.geocoded.map do |fake|
      {
        lat: fake.latitude,
        lng: fake.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: {fake: fake })
      }
    end
  end

  def show
    @fake = Fake.find(params[:id])
  end

  def new
    @fake = Fake.new
  end
end
