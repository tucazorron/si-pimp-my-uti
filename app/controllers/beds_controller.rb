class BedsController < ApplicationController
  def index
    @beds = Bed.all
    render json: @beds
  end

  def create
  end

  def destroy
  end
end
