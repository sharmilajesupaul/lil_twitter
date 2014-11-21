helpers do

  def gravatar_url(email)
    email_hash = Digest::MD5.hexdigest(email.downcase)
    "http://www.gravatar.com/avatar/#{email_hash}"
  end
end
