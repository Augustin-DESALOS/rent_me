class FakesController < ApplicationController
  def index
    @fakes = Fake.where(category: params[:category])
    @category = params[:category]
  end

  def show
    @fake = Fake.find(params[:id])
  end

  def new
    @fake = Fake.new
  end
  def profile
    # @reservations = current_user.reservations
  end
end
