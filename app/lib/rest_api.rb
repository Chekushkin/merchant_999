class RestApi
  ENDPOINT = 'https://partners-api.999.md'
  API_KEY  = 'blank'

  class << self
    def categories
      JSON.parse(
        RestClient::Request.execute(
          method: :get,
          url: ENDPOINT + "/categories",
          user: API_KEY
        )
      )
    end
  end
end