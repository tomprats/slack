module Slack
  def self.users
    url = "https://slack.com/api/users.list"
    options = { token: ACCESS_TOKEN }
    response = get url, options
    users = JSON.parse(response)["members"]
    users.select do |member|
      !member["deleted"] && !member["is_bot"] && !member["is_restricted"]
    end
  end

  def self.username
    user = users.shuffle.first
    user["name"]
  end
end
