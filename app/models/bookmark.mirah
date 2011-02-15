import com.google.appengine.ext.mirah.db.Model
import com.google.appengine.api.datastore.*

class Bookmark < Model
  property 'href', String
  property 'description', String
end
