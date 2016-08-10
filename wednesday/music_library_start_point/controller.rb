require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( 'models/artist')
require_relative( 'models/album')


get "/artists/new" do
  erb( :'artist/new' )
end

post'/artists' do
  @artist = Artist.new(params)
  @artist.save
  erb( :'artist/create' )
end

get '/artists' do
  @artists = Artist.all()
  erb( :'artist/index' )
end

get '/artists/:id' do
  @artist = Artist.find( params[:id] )
  erb( :'artist/show' )
end

get '/artists/:id/edit' do
  @artist = Artist.find( params[:id] )
  erb( :'artist/edit' )
end

post '/artists/:id' do
  Artist.update( params )
  redirect ( to ( "/artists/#{params[:id]}" ) )
end

post '/artists/:id/delete' do
  Artist.destroy( params[:id] )
  redirect ( to ( '/artists' ) )
end



get '/albums/new' do 
  @artists = Artist.all
  erb( :'album/new' )
end

post '/albums' do 
  puts params
  @album = Album.new( params )
  @album.save() 
  erb( :'album/create' )
end

get '/albums' do
  @albums = Album.all()
  erb( :'album/index' )
end

get '/albums/:id' do
  @album = Album.find( params[:id] )
  erb( :'album/show' )
end  

get '/albums/:id/edit' do
  @album = Album.find( params[:id] )
  erb( :'album/edit' )
end  

post '/albums/:id' do
  Album.update( params )
  redirect (to( "/albums/#{params[:id]}" ))
end  

post '/albums/:id/delete' do 
  Album.destroy( params[:id] )
  redirect (to( '/albums' ))
end  