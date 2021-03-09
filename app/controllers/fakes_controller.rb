class FakesController < ApplicationController
  
  def show
    @fake = Fake.find(params[:id])
  end

  def new
    @fake = Fake.new
  end
end
