put '/models/:id' do 
  @model = Model.find(params[:id])
  
  content_type :json
  
  { :body => {
      :results => 'update'
    }
  }.to_json    
end
