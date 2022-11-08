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


      #landing page note
     get "/" do

        {greetings:"Welcome to Farmazon"   }.to_json
       
     end

     #Getting all categories
      get "/categories" do 
       Category.all.to_json

     end
    
     get "/categories/:id" do 
       category = Category.find(params[:id])
       category.to_json
      end
   
      get "/products" do 
       Product.all.to_json

      end
      
      get "/products/:id" do 
        Product.find(params[:id]).to_json
      end


    #create user
    post '/user' do 
        user = User.create(
            name: params[:name]
        ) user.to_json
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
    
     #get all products of a category
     get '/category/:id/products' do 
        Category.find(params[:id]).products.to_json(include: :category)

        

end