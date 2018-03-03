require './server/models/Model'

get "/" do
  File.read(File.join('assets', 'static', 'index.html'))
end

get '/models' do 
  content_type :json
  { :body => {
      :results => Model.all
    }
  }.to_json  
end

get '/models/:id' do
  content_type :json
  { :body => {
      :results => Model.find(params[:id])
    }
  }.to_json
end

post '/models' do 
  @model = Model.create({:name => request[:name]})
  
  content_type :json
  
  { :body => {
      :results => 'create'
    }
  }.to_json  
end

put '/models/:id' do 
  @model = Model.find(params[:id])
  
  content_type :json
  
  { :body => {
      :results => 'update'
    }
  }.to_json    
end

delete '/models/:id' do 
  Model.destroy(params[:id])
  
  content_type :json
  
  { :body => {
      :results => 'delete'
    }
  }.to_json    
end

get "/assets/*" do
  env["PATH_INFO"].sub!("/assets", "")
  puts 'info ' + env["PATH_INFO"]
  settings.environment.call(env)
end
