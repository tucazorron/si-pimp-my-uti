class BedsController < ApplicationController

  def index
    @beds = Bed.all
  end

  def create
    @bed = Bed.new(bed_params)
    if @bed.save
      redirect_to :authenticated_root
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
    params.require(:bed).permit(:busy, :bed_type_id, :wing_id)
  end

end
