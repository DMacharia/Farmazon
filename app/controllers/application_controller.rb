class ApplicationController < Sinatra::Base

    set :default_content_type, "application/json"

    set :bind, '0.0.0.0'
  configure do
    enable :cross_origin
  end
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
    #enable CORS preflight requests
    options "*" do
        response.headers['Access-Control-Allow-Methods'] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
    end

    get '/categories' do
        Category.all.to_json
      end

      # get '/categories/:id' do
      #   Category.find(params[:id]).to_json
      # end

      # get '/categories/:id' do
      #   requested_category = Category.where(:id => params[:id])
    
      #   if requested_category == []
      #     return {}.to_json
      #   else
      #     return Category.find(params[:id]).to_json(include: {
      #      Product.find.all{ only: [:id, :price, :description, :image_url]}
      #     })
      #   end
      # end
      

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