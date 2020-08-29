class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
    @appointments = @patient.appointments
  end

  def create
    @patient = Patient.create(patient_params)
  end

  def index
    @patients = Patient.all 
  end

  def new
    @patient = Patient.new
  end
  
  private
  
  def patient_params
    params.require(:patients).permit(:name, :age)
  end
end
