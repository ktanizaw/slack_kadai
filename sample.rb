require "slack-notify"
require 'clockwork'
require 'active_support/time'

module Clockwork
  handler do |job|
    client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
    client.notify("Hello There!#{job}")
  end
  every(5.seconds, 'frequent.job')
end
