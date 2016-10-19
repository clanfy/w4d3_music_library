


#INDEX
get "/artists" do
   @artists = Artist.all()
   erb(:'artists/index')
 end

#NEW
get "/artists/new" do
  erb(:'artists/new')
end

#CREATE
post "/artists" do
  @artist = Artist.new(params)
  @artist.save()
  erb(:'artists/create')
end

#SHOW
get "/artists/:id" do
  @artist = Artist.find(params[:id])
  erb(:'artists/show')
end