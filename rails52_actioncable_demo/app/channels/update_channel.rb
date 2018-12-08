class UpdateChannel < ApplicationCable::Channel
  def subscribed
    puts "****************** Update Channel Subscribed, #{params}"
  end
end
