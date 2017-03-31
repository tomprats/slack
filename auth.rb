module Slack
  def self.auth_url
    url = "https://slack.com/oauth/authorize"
    options = {
      client_id: CLIENT_ID,
      scope: "chat:write:bot, chat:write:user, users:read",
      redirect_uri: "http://lvh.me:3000"
    }
    "#{url}?#{URI.encode_www_form(options)}"
  end

  def self.get_auth_token(code)
    url = "https://slack.com/api/oauth.access"
    options = {
      client_id: CLIENT_ID,
      client_secret: CLIENT_SECRET,
      code: code,
      redirect_uri: "http://lvh.me:3000"
    }
    get url, options
  end
end
