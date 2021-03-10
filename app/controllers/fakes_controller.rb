class FakesController < ApplicationController
  def index
    @fakes = Fake.where(category: params[:category])
    @category = params[:category]
    @personality = Fake.where(personality: params[:personality])
  end

  def show
    @fake = Fake.find(params[:id])
  end

  def new
    @fake = Fake.new
  end
end
