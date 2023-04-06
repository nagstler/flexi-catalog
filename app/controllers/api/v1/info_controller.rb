module Api
  module V1
    class InfoController < ApplicationController
      def index
        @info = {
          status: 'OK',
          current_time: Time.now.utc.iso8601,
          environment: Rails.env,
          version: MyApp::VERSION
        }
        
        render_json @info
      end
    end
  end
end
