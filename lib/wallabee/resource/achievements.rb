module Wallabee
	module Resource
		class Achievements < Base
	    def list
	    	@connection.get('/achievements').body.achievements
	    end
	  end
	end
end