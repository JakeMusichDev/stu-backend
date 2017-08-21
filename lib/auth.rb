class Auth
  def self.issue(payload)
    # payload -> {user_id: 1}
    JWT.encode(payload, Rails.application.secrets.secret_key_base, 'none')
  end

  def self.decode(token)
    JWT.decode(token, Rails.application.secrets.secret_key_base, false).first
  end
end
