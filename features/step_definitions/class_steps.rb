Given /^I am in an initial class$/ do
  visit new_class_path
end

When /^I enter a name for the class$/ do
  @course_name = "iOS Development 120"
  fill_in "Name", :with => @course_name
  commit_change "#course_name" #TODO: use 'Name' here
end

Then /^the class should have a name$/ do
  Course.last.name.should == @course_name
end
