class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
    @appointments = @doctor.appointments
  end

  def create
    @doctors = Doctor.all
  end

  def index
    @doctor = Doctor.create(doctor_params)
  end

  def new
    @doctor = Doctor.new
  end
  
  private
  
  def doctor_params
    params.require(:doctor).permit(:name, :age)
  end
end
