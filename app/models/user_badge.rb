class UserBadge < ApplicationRecord
  belongs_to :user
  belongs_to :badge

  def self.unlocks(routine)
    user = User.find_by(id: routine.user_id.to_s)

# ["Pushup Rookie", "Situp Rookie", "Jumping Jack Rookie", "Lunge Rookie", "Squat Rookie", "Pushup Master", "Situp Master", "Jumping Jack Master", "Lunge Master", "Squat Master"]

#match to name, not ID#

    user.user_badges.each do |ub|

      if ub.badge.name == "Pushup Rookie"
        if user.lifetime_reps(1) >= 10
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Situp Rookie"
        if user.lifetime_reps(2) >= 10
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Jumping Jack Rookie"
        if user.lifetime_reps(3) >= 10
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Lunge Rookie"
        if user.lifetime_reps(5) >= 10
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Squat Rookie"
        if user.lifetime_reps(4) >= 10
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Pushup Master"
        if user.lifetime_reps(1) >= 50
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Situp Master"
        if user.lifetime_reps(2) >= 50
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Jumping Jack Master"
        if user.lifetime_reps(3) >= 50
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Lunge Master"
        if user.lifetime_reps(5) >= 50
          ub.unlocked = true
          ub.save
        end
      end

      if ub.badge.name == "Squat Master"
        if user.lifetime_reps(4) >= 50
          ub.unlocked = true
          ub.save
        end
      end

    end
  end #self.unlocks

end #class UserBadge
