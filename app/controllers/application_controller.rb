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

          #landing page note

    get "/" do
        {greetings:"Welcome to Farmazon"   }.to_json
    end

    get "/products" do 
        Product.all.to_json
    end
      
    get "/products/:id" do 
         Product.find(params[:id]).to_json
    end

    get "/products/:category" do 
        Product.find_by(category: params[:category]).to_json
    end
    #create user
    post '/user' do 
        user = User.create(
            name: params[:name]
        ) 
        user.to_json
        end
    
    #update user/name
      patch '/user/:id'do 
       user = User.find(params[:id])
         user.update(
          name: params[:name]
          )
        end


    #delete user/account
    delete '/user/:id' do 
        user = User.find(params[:id]) 
        use.destroy
    end
    
end