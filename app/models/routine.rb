class Routine < ApplicationRecord
  belongs_to :exercise
  belongs_to :user

  def self.top10(id)
    user_hash = {}
    exercise = self.all.select {|r| r.exercise_id == id}
    exercise.each do |routine|
      if user_hash[routine.user_id] == nil
        user_hash[routine.user_id] = routine.reps
      else
        user_hash[routine.user_id] += routine.reps
      end
    end
    sorted_array = user_hash.sort_by { |k,v| v }.reverse
  end


end
