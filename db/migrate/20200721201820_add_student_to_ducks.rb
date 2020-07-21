class AddStudentToDucks < ActiveRecord::Migration[5.2]
  def change
    add_column :ducks, :student_id, :integer, foreign_key: true
  end
end
