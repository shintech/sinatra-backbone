delete '/models/:id' do 
  Model.destroy(params[:id])
  
  content_type :json
  
  { :body => {
      :results => 'delete'
    }
  }.to_json    
end
