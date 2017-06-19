class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.integer :instructor_id, null: false
      
      t.timestamps
    end

    add_index :courses, :name, unique: true
  end
end
