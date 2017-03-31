module Slack
  def self.give_tacos(channel)
    url = "https://slack.com/api/chat.postMessage"
    options = {
      token: ACCESS_TOKEN,
      channel: "@heytaco",
      as_user: true,
      text: "#{channel} :taco: :taco: :taco: :taco: :taco:",
      parse: "full"
    }
    get url, options
  end
end
