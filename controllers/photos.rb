#index routes
get "/" do
  @photos = Photo.all
  @random_photo = Photo.find(1 + Random.rand(@photos.length))
  erb :"photos/index"
end

get "/photos" do
  @photos = Photo.all
  @random_photo = Photo.find(1 + Random.rand(@photos.length))
  erb :"photos/index"
end

#new route
get "/photos/new" do
  erb :"photos/new"
end

#create route
post "/photos" do
  @new_photo = Photo.new(params[:photo])
  if @new_photo.save
    redirect "/photos/#{@new_photo.id}"
  else
    erb :"photos/new"
  end
end

#show route
get "/photos/:id" do
  @photo = Photo.find(params[:id])
  erb :"photos/show"
end

#edit route
get "/photos/:id/edit" do
  @photo = Photo.find(params[:id])
  erb :"photos/edit"
end

#update route
put "/photos/:id" do
  @photo = Photo.find(params[:id])
  @photo.update(params[:photo])
  redirect "/photos/#{@photo.id}"
end
