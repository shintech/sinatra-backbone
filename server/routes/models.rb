require 'json'

set(:method) do |method|
  method = method.to_s.upcase
  condition { request.request_method == method }
end

before :method => :post do
  puts "pre-process POST"
  
  request.body.rewind

  @body = JSON.parse request.body.read  
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
  @model = Model.create(@body)
  
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
