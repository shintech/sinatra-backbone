post '/models' do 
  @model = Model.create({:name => request[:name]})
  
  content_type :json
  
  { :body => {
      :results => 'create'
    }
  }.to_json  
end
