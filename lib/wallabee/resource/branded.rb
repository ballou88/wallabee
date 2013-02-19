module Wallabee
  module Resource
    class Branded < Base
      def items
        @connection.get('/branded').body.items
      end
    end
  end
end