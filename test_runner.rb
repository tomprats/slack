Dir["./*.rb"].each { |file| require file unless file.match /runner\.rb/ }
require "pry"

module Slack
  def self.run
    # log "Auth", auth_url
    # log "Auth", get_auth_token(token)
    # log "Taco", give_tacos("@brianprats")
    # log "Giphy", giphy("@tom", "taylor swift")
    puts username
  end
end

Slack.run
