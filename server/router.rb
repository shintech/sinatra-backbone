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

get "/assets/*" do
  env["PATH_INFO"].sub!("/assets", "")
  puts 'info ' + env["PATH_INFO"]
  settings.environment.call(env)
end