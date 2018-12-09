class UpdateChannel < ApplicationCable::Channel
  def subscribed
    # kv = Keyvalue.where(key: params[:key]).first
    # puts "****************** Update Channel Subscribed: #{kv}"
    # stream_for kv
    puts "UpdateChannel has been subscribed. Beginning to streaming from it #{params}"
    stream_from("UpdateChannel")
  end
end
