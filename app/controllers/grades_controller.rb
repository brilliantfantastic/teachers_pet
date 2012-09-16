class GradesController < ApplicationController
  def create
    student = params[:grade][:student]

    @grade = Grade.new
    @grade.assignment_id = params[:grade][:assignment][:id]
    @grade.score = params[:grade][:score]

    #create the student if the student name is nil
    if student[:id].present?
      @grade.student = Student.find student[:id]
    else
      @grade.student = Student.create!({:name => student[:name]})
    end
    @grade.save!
    render :json => @grade
  end
end
