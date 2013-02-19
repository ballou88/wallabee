module Wallabee
  class API
    # Creates a new API client instance.
    #
    # @param [Hash] params
    # @option params [String] :api_key The api_key (required)
    # @option params [String] :base_url ('https://api.wallab.ee/') API base url
    # @option params [Symbol] :faraday_adapter ('Faraday.default_adapter')  Faraday adapter/http client library to use.
    # @raise [ArgumentError] when no client_id is provided
    # @raise [ArgumentError] when no api_key is provided
    # @example
    #   client = Wallabee::API.new :api_key => '#######'
    #
    # @see [Faraday]
    def initialize(params)
      @api_key         = params[:api_key]
      @debug           = params[:debug]
      @base_url        = params[:base_url]        || 'http://api.wallab.ee/'
      @faraday_adapter = params[:faraday_adapter] || Faraday.default_adapter
      @faraday         = params[:faraday]         || default_faraday

      raise ArgumentError, ':api_key missing' unless @api_key
    end

    def achievements
    	Wallabee::Resource::Achievements.new(@faraday)
    end

    def branded
      Wallabee::Resource::Branded.new(@faraday)
    end

    def default_faraday
      Faraday.new(:url => @base_url) do |faraday|
        faraday.request  :url_encoded
        faraday.response :rashify
        faraday.response :json
        faraday.response(:logger) if @debug
        faraday.adapter @faraday_adapter
        faraday.headers["X-WallaBee-API-Key"] = @api_key
      end
    end
  end
end