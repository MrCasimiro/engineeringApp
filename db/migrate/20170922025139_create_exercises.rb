class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name_exercise

      t.timestamps
    end
  end
end
