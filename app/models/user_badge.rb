class UserBadge < ApplicationRecord
  belongs_to :user
  belongs_to :badge

  def self.unlocks(routine)
    user = User.find_by(id: routine.user_id.to_s)

    user.user_badges.each do |ub|
      if ub.badge.name == "1000 pushups!"
        if user.lifetime_reps(1) >= 1000
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "WELL BALANCED"
        if user.lifetime_reps(1) >= 1000
          ub.unlocked = true
          ub.save
        end
      end

    end
  end #self.unlocks

  # def unlocks
  #   self.unlocked = true
  # end

end #class UserBadge
