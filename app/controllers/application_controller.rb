class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # To enable cross origin requests for all routes:
  set :bind, '8000'
  configure do
    enable :cross_origin
  end
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
  
  # routes...
  options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
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