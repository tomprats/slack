module Slack
  def self.give_tacos(user, amount = 1, message = nil)
    user = user.gsub(/\A\W/, "")
    uid = users.find{ |u| u["name"] == user }["id"]
    url = "https://www.heytaco.chat/api/app.giveTaco"
    options = {
      token: TACO_SECRET,
      uid: uid,
      amount: amount,
      message: message
    }
    client.post url, json: options
  end
end
