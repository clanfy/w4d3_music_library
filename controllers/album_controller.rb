
#INDEX
get "/albums" do
 @albums = Album.all()
 erb(:'albums/index')
end

#NEW
get "/albums/new" do
  @artists = Artist.all()
  erb(:'albums/new')
end

#CREATE
post "/albums" do
  @album = Album.new(params)
  @album.save()
  erb(:'albums/create')
end

#SHOW
get "/albums/:id" do
  @album = Album.find(params[:id])
  erb(:'albums/show')
end