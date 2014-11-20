class CreateFollowersUsers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.references :user
      t.references :follower

      t.timestamps
    end
  end
end
