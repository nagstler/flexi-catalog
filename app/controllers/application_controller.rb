class ApplicationController < ActionController::API
    def render_json(data, status: :ok, content_type: 'application/json')
        json = Oj.dump(data.as_json, mode: :compat)
        render json: json, status: status, content_type: content_type
    end
end
