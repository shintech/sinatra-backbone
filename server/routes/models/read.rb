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
