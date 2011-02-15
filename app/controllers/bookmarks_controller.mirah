import dubious.*
import app.models.*

class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.run
    render index_erb, main_erb
  end

  def new
    @bookmark = Bookmark.new
    render new_erb, main_erb
  end

  def create
    Bookmark.new.update(params.for('bookmark')).save
    redirect_to params.index
  end

  def_edb(index_erb, 'app/views/bookmarks/index.html.erb')
  def_edb(new_erb,   'app/views/bookmarks/new.html.erb')
  def_edb(main_erb,  'app/views/layouts/bookmarks.html.erb')
end
