class SpecialitiesController < ApplicationController

  def index
    @specialities = Speciality.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @speciality = Speciality.find(params[:id])
  end

  def new
    @speciality = Speciality.new
  end

  def create
    @speciality = Speciality.new(speciality_params)

    if @speciality.save
      redirect_to speciality_path(@speciality)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def speciality_params
    params.require(:speciality).permit(:name, :description)
  end

  def edit 
    @speciality = Speciality.find(params[:id])
  end

  def update
    @speciality = Speciality.find(params[:id])

    if @speciality.update(speciality_params)
      redirect_to speciality_path(@speciality)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @speciality = Speciality.find(params[:id])
    @speciality.destroy
    redirect_to specialities_path
  end

end