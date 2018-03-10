Dir['./server/models/*.rb'].each {|file| require file}
Dir['./server/routes/*.rb'].each {|file| require file}

get "/" do
  File.read(File.join('assets', 'static', 'index.html'))
end

get "/assets/*" do
  env["PATH_INFO"].sub!("/assets", "")
  puts 'info ' + env["PATH_INFO"]
  settings.environment.call(env)
end
