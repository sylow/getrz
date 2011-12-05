class OffersController < ApplicationController
  def index
  end

  def personal
    @title = "Custom offers for you"
    @hide_custom_offer = "yes"
    render :action => :index
  end
end
