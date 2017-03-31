Dir["./*.rb"].each { |file| require file unless file == "./runner.rb" }

module Slack
  def self.run
    # https://api.slack.com/methods/users.list
    # Give random user a taco
    log "Taco", give_tacos("@tom")
    # log "Giphy", giphy("@tom", "taylor swift")
  end
end

Slack.run
