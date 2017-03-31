Dir["./*.rb"].each { |file| require file unless file.match /runner\.rb/ }

module Slack
  def self.run
    user = "@#{username}"
    log "Taco", give_tacos(user)
    log "Giphy", giphy(user, "taylor swift")
    log "Giphy", giphy("@tomprats", "taylor swift")
  end
end

Slack.run
