require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect "/bookmarks"
  end

  get "/addbookmark" do
    
    erb :addbookmark
  end

  run! if app_file == $0
end
