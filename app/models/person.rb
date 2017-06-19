# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ApplicationRecord
  validates :name, presence: true

  def cheers
    "Cheers!"
  end

  def yo
    "Yo!"
  end

  # NOTE: students have enrollments
  has_many  :enrolled,
            primary_key: :id,
            foreign_key: :student_id,
            class_name: :Enrollment

  # NOTE: students have courses
  has_many  :courses,
            through: :enrolled,
            source: :courses

  # NOTE: teachers instruct
  has_many  :instructs,
            primary_key: :id,
            foreign_key: :instructor_id,
            class_name: :Course

  # NOTE: teachers have students
  has_many  :students,
            through: :instructs,
            source: :students
  # NOTE: students have instructors
  has_many  :instructors,
            through: :courses,
            source: :instructor
end
