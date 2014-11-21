helpers do

  def gravatar_url(email)
    email = 'bob@aol.com' if email.nil?

    email_hash = Digest::MD5.hexdigest(email.downcase)
    "http://www.gravatar.com/avatar/#{email_hash}"
  end

  def tweet_sorter(tweets)
    tweets.sort_by { |tweet| tweet.created_at  }.reverse
  end
end
