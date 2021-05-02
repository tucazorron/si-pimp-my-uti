class BedsController < ApplicationController

  def index
    @beds = Bed.all
    render json: @beds
  end

  def create
    @bed = Bed.new(bed_params)
    if @bed.save
      render json: @bed, status: :created, location: @bed
    else
      render json: @bed.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bed.destroy
  end

  def show
    @bed = Bed.find(params[:id])
    render json: @bed
  end

  private

  def set_bed
    @bed = Bed.find(params[:id])
  end

  def bed_params
    params.require(:bed).permit(:busy, :patient_id, :bed_type_id, :wing_id)
  end

end
