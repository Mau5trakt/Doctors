class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to doctor_path(@doctor)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def doctor_params
    params.require(:doctor).permit(
      :full_name,
      :medical_code,
      :email,
      :phone_number,
      :identity_card,
      speciality_ids: []
      )
  end

  def edit 
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])

    if @doctor.update(doctor_params)
      redirect_to doctor_path(@doctor)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    redirect_to doctors_path
  end

end