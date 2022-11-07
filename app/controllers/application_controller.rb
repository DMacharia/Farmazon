class ApplicationController < Sinatra::Base

    set :default_content_type, "application/json"

    before do
        response.headers['Access-Control-Allow-Origin'] = "*"
    end

    #enable CORS preflight requests
    options "*" do
        response.headers['Access-Control-Allow-Methods'] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
    end



end