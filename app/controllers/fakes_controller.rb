class FakesController < ApplicationController
  
  def index
    @fakes = Fake.all
  end

  def show
    @fake = Fake.find(params[:id])
  end

  def new
    @fake = Fake.new
  end
end
