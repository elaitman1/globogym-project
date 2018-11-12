class CreateUserBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :user_badges do |t|
      t.integer :user_id
      t.integer :badge_id
      t.boolean :unlocked

      t.timestamps
    end
  end
end
