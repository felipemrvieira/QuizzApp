class CreateStudentPaths < ActiveRecord::Migration[5.2]
  def change
    create_table :student_paths do |t|
      t.references :student, foreign_key: true
      t.references :path, foreign_key: true

      t.timestamps
    end
  end
end
