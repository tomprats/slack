require "giphy"

module Slack
  def self.giphy(channel, tag)
    tag = tag.split(" ").map(&:capitalize).join(" ")
    gif = Giphy.random tag
    get "https://slack.com/api/chat.postMessage", {
      token: ACCESS_TOKEN,
      channel: channel,
      as_user: false,
      attachments: [{
        fallback: "You're missing out on a GIF on #{tag}",
        color: "#42B755",
        title: tag,
        title_link: "http://www.tomify.me/",
        image_url: gif.image_url.to_s,
        footer: "Tomify"
      }].to_json
    }
  end
end
