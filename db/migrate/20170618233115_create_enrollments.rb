class CreateEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :enrollments do |t|
      t.integer :student_id, null: false
      t.integer :course_id, null: false

      t.timestamps
    end

    add_index :enrollments, [:student_id, :course_id], unique: true
  end
end
