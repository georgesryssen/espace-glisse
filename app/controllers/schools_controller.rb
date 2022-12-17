class SchoolsController < ApplicationController
  before_action :set_school, only: %i[show edit update destroy]

  def index
    @schools = School.all
  end

  def show
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    if @school.save
      redirect_to school_path(@school)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @school.update(school_params)

    redirect_to school_path(@school)
  end

  def destroy
    @school.delete
    redirect_to schools_path, status: :see_other
  end

  private

  def set_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :address, :phone, :description, :opening)
  end
end
