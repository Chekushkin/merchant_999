class Api
  attr_reader :scope, :response

  def initialize(scope)
    @scope = scope
    request
  end

  def request
    @response = RestApi.send(scope)
  end
end