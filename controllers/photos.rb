#index route
get "/" do
  @photos = Photo.all
  erb :"photos/index"
end

#new route

#create route

#show route
