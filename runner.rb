Dir["#{File.dirname(__FILE__)}/*.rb"].each { |file| require file unless file.match /runner\.rb/ }

module Slack
  def self.run
    user = "@#{username}"
    log "Taco", give_tacos(user, 1, "Live life like you're eating your last taco")
    log "Giphy", giphy(user, "taylor swift")
    log "Giphy", giphy("@tom", "taylor swift")
  end
end

Slack.run
