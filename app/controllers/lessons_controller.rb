class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show edit update destroy]

  def index
    @lessons = Lesson.all
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @lesson.update(lesson_params)

    redirect_to lesson_path(@lesson)
  end

  def destroy
    @lesson.delet
    redirect_to lessons_path, status: :see_other
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:name, :date, :duration, :level, :school, :category, :spot)
  end
end
