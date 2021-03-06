require "HTTP"

module Slack
  def self.client
    HTTP.headers(accept: "application/json")
  end

  def self.get(url, params)
    puts "URL: #{url}"
    puts "PARAMS: #{params}"
    client.request :get, encode(url, params)
  end

  def self.post(url, params)
    puts "URL: #{url}"
    puts "PARAMS: #{params}"
    client.request :post, encode(url, params)
  end

  def self.log(name, value)
    puts "BEGIN ############################### #{name} ############################### BEGIN"
    puts value
    puts "MIDDLE ############################## #{name} ############################## MIDDLE"
    puts value.inspect
    puts "END ################################# #{name} ################################# END"
  end

  def self.encode(url, params)
    return url if params.nil? || params.empty?
    "#{url}?#{URI.encode_www_form(params)}"
  end
end
