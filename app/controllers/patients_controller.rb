class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    render json: @patients
  end

  def create
    @patient = Patient.new
    
  end

  def destroy
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient
  end
end
