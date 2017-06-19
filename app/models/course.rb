# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  instructor_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :instructor_id, presence: true

  has_many  :enrollments,
            primary_key: :id,
            foreign_key: :course_id,
            class_name: :Enrollment

  has_many  :students,
            through: :enrollments,
            source: :students

  belongs_to  :instructor,
              primary_key: :id,
              foreign_key: :instructor_id,
              class_name: :Person

end
