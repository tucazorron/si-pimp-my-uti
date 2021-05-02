class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    render json: @patients
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :rg, :age, :cause, :description, :gender_id)
  end

end
