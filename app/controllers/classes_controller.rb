class ClassesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    if params[:course][:id].present?
      #TODO: Update the course
    else
      @course = Course.new params[:course]
      @course.save
      render :json => @course
    end
  end
end
