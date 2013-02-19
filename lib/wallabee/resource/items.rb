module Wallabee
  module Resource
    class Items < Base
      def information(id)
        @connection.get("/items/#{id}").body
      end

      def activity(id)
        @connection.get("/items/#{id}/activity").body
      end
    end
  end
end