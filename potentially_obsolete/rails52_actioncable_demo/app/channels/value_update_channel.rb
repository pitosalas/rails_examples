class ValueUpdateChannel < ApplicationCable::Channel
  def subscribed
    puts "++++ value_update_channel.rb subscribed"
    stream_from "new_value"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def method1
  end

  def method2
  end
end
