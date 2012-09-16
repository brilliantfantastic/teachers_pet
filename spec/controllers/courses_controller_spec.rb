require 'spec_helper'

describe CoursesController do

  describe "GET 'new'" do
    it "redirects to the assignments edit" do
      get 'new'
      course = Course.last
      assignment = Assignment.where({:course_id => course.id}).last
      response.should redirect_to(edit_course_assignment_url(course, assignment))
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      post 'create', :course => {:name => "iOS 101"}
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "#edit" do
    it  "edits a course" do
      @course = Course.create!(:name => "Math")
      get :edit, :id => @course
    end
  end

end
