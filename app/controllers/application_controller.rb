class ApplicationController < Sinatra::Base

    set :default_content_type, "application/json"

    before do
        response.headers['Access-Control-Allow-Origin'] = "*"
    end

    #enable CORS preflight requests
    options "*" do
        response.headers['Access-Control-Allow-Methods'] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
    end

    get '/categories' do
        Category.all.to_json
      end

      get '/products' do
        Product.all.to_json
      end

      get '/products/:id' do
        Product.find(params[:id]).to_json
      end

      get '/products/:image_url' do
        Product.find(params[:image_url])
      end



end