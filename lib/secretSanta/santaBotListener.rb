require 'open-uri'
require 'json'
require 'slack'

token = ENV["SANTABOTTOKEN"]
chatroom = ENV["SECRETSANTACHAT"]
client = Slack::Client.new token: token

open("https://slack.com/api/rtm.start?token=#{token}&pretty=1") do |website|
  rtmurl = JSON.parse(website.read)["url"]
  listener = Slack::RealTime::Client.new(rtmurl)

  listener.on :hello do
    puts 'Successfully connected.'
  end
  listener.on :message do |answer|
    if answer['channel'] == "#{chatroom}" then
      case answer['text']
      when 'Coal' then
        op = answer['user']
        client.chat_postMessage(:channel=>"#{chatroom}", :text=>"Ho ho ho! Merry Christmas <@#{op}>", :as_user=>"true")
      end
    end
  end
  listener.start
end
