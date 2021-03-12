class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @fakes = Fake.all
  end
  def dashboard
    @rentings = Renting.where(user: current_user)
  end
end
