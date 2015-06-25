class Blog.Models.Activity extends Backbone.Model
  paramRoot: 'post'

class Blog.Collections.ActivitiesCollection extends Backbone.Collection
  model: Blog.Models.Activity
  url: '/activities'
