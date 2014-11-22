class Tweet < ActiveRecord::Base
  # before_save :convert_time
  has_and_belongs_to_many :tags
  belongs_to :user
  validates :content, length: { maximum: 140 }

  # def convert_time
  #   self.created_at ||= Time.now
  # end
end
