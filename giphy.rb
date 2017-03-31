require "giphy"

module Slack
  def self.giphy(channel, tag)
    gif = Giphy.random tag
    get "https://slack.com/api/chat.postMessage", {
      text: "Blank",
      token: ACCESS_TOKEN,
      channel: channel,
      as_user: true,
      attachments: [{
        fallback: "You're missing out on a GIF of #{tag}",
        color: "#42B755",
        title: tag,
        title_link: "http://www.tomify.me/",
        image_url: gif.image_url.to_s,
        footer: "Tomify"
      }]
    }
  end
end
