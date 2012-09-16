class Assignment < ActiveRecord::Base
  attr_accessible :course_id, :name, :total_score

  belongs_to :course
  has_many :grades

  def graded
    graded = []
    grades.each do |grade|
      graded << grade if grade.score.present?
    end
    graded.uniq
  end

  def ungraded
    graded = self.graded.collect{|g| g.student}
    (course.students - graded)
  end

  def self.default
    assignment = Assignment.last
    if assignment.nil?
      assignment = Assignment.new
      assignment.course_id = Course.default.id
      assignment.name = 'Assignment #1'
      assignment.save!
    end
    assignment
  end
end
