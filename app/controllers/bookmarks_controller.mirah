import dubious.*
import models.*

class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.run
    render index_erb, main_erb
  end

  def_edb(index_erb, 'app/views/bookmarks/index.html.erb')
  def_edb(main_erb,  'app/views/layouts/bookmarks.html.erb')
end
