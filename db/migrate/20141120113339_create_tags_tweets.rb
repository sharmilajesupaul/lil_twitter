class CreateTagsTweets < ActiveRecord::Migration
  def change
    create_table :tags_tweets do |t|
      t.belongs_to :tag
      t.belongs_to :tweet

      t.timestamps
    end
  end
end
