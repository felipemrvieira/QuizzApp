class CreateQuestionOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :question_options do |t|
      t.string :option_description
      t.boolean :correct
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
