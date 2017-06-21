class ImagesController < ApplicationController
   def index
    # @kairos_key = Rails.application.secrets.0319db4956f1715416b4b73ac16ec844
    @response = HTTParty.post("https://api.kairos.com/v2/media?source=http://www.pick-health.com/wp-content/uploads/2013/08/happy-person.jpg", headers: {"App ID": "f6e0d968", "Key": "0319db4956f1715416b4b73ac16ec844"})
    render json: { data: @response }
  end
end
