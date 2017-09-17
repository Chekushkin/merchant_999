class AdsController < ApplicationController
  def index; end

  def new
    api = Api.new("categories")
    @api = api.response["categories"]
    @ad = Ad.new
  end

  def create
    @ad = Ad.create(ad_params)
    redirect_to ads_path
  end

  def ad_params
    params.require(:ad).permit!
  end
end
