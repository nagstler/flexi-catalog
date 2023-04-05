module Api
  module V1
    class InfoController < ApplicationController
      def index
        @info = Rails.cache.fetch('api/v1/info', expires_in: 1.hour) do
          {
            status: 'OK',
            current_time: Time.now.utc.iso8601,
            environment: Rails.env,
            version: MyApp::VERSION
          }
        end

        render_json @info
      end
    end
  end
end
