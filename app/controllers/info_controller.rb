class InfoController < ApplicationController
    def index
      render json: {
        status: 'OK',
        current_time: Time.now.utc.iso8601,
        environment: Rails.env,
        version: MyApp::VERSION
      }
    end
end
  