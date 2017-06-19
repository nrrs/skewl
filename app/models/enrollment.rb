# == Schema Information
#
# Table name: enrollments
#
#  id         :integer          not null, primary key
#  student_id :integer          not null
#  course_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Enrollment < ApplicationRecord
  validates :student_id, presence: true
  validates :course_id, presence: true

  belongs_to  :students,
              primary_key: :id,
              foreign_key: :student_id,
              class_name: :Person

  belongs_to  :courses,
              primary_key: :id,
              foreign_key: :course_id,
              class_name: :Course
end
