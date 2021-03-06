class Exercise < ApplicationRecord
	has_many :workout_composes
	has_many :workouts, through: :workout_composes 
	
	validates :name_exercise, presence: true, length: {maximum: 50}
end
