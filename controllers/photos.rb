#index routes
get "/" do
  @photos = Photo.all
  erb :"photos/index"
end

get "/photos" do
  @photos = Photo.all
  erb :"photos/index"
end

#new route
get "/photos/new" do
  erb :"photos/new"
end

#create route
post "/photos" do
  @new_photo = Photo.create(params[:photo])
  redirect "/photos/#{@new_photo.id}"
end

#show route
get "/photos/:id" do
  @photo = Photo.find(params[:id])
  erb :"photos/show"
end
