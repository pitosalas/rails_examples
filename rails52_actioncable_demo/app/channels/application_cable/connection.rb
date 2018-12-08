module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def connect
      puts "********************** Connection connected"
    end
  end
end
