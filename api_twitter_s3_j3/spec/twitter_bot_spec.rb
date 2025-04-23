require "rspec"
require_relative "../lib/twitter_bot"

describe TwitterBot do
  it "initialise correctement le client Twitter" do
    bot = TwitterBot.new
    expect(bot).not_to be_nil
  end
end
