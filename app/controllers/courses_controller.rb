class CoursesController < ApplicationController
  def new
    assignment = Assignment.default
    redirect_to edit_course_assignment_path assignment.course_id, assignment.id
  end

  def create
    if params[:course][:id].present?
      update
    else
      @course = Course.new params[:course]
      @course.save
      render :json => @course
    end
  end

  def show
    @course = Course.find(params[:id])
    @student = Student.new
  end

  def index
    @courses = Course.all
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update_attributes(params[:course])
    render :show
  end

end
