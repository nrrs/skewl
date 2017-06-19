# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# NOTE: People
Person.destroy_all
student1 = Person.create!(name: 'Norris')
student2 = Person.create!(name: 'Jimmy')
student3 = Person.create!(name: 'Brian')
professor1 = Person.create!(name: 'Mrs. Frizzle')
professor2 = Person.create!(name: 'Professor X')

# NOTE: Courses
Course.destroy_all
course1 = Course.create!(name: 'Industrial Design', instructor_id: professor1.id)
course2 = Course.create!(name: 'Software Enginnering', instructor_id: professor2.id)
course3 = Course.create!(name: 'Psychology', instructor_id: professor2.id)

# NOTE: enrollments
enrollment1 = Enrollment.create!(student_id: student1.id, course_id: course2.id)
enrollment2 = Enrollment.create!(student_id: student1.id, course_id: course3.id)
enrollment3 = Enrollment.create!(student_id: student2.id, course_id: course1.id)
enrollment4 = Enrollment.create!(student_id: student2.id, course_id: course3.id)
enrollment5 = Enrollment.create!(student_id: student3.id, course_id: course1.id)
enrollment6 = Enrollment.create!(student_id: student3.id, course_id: course3.id)
