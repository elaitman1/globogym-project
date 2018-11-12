class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :name
      t.integer :weight
      t.string  :mood

      t.timestamps
    end
  end
end
