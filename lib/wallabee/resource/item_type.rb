module Wallabee
  module Resource
    class ItemType < Base
      def information(id)
        @connection.get("/itemtypes/#{id}").body
      end
      def id_information(type_id, item_id)
        @connection.get("itemtypes/#{type_id}/number/#{item_id}").body
      end
    end
  end
end