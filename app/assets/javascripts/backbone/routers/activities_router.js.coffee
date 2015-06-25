class Blog.Routers.ActivitiesRouter extends Backbone.Router

initialize: (options) ->
    @activities= new Blog.Collections.ActivitiesCollection()
    @activities.reset options.activities

routes:
    "index"       : "index"
    "new"         : "newActivity"
    ":id"         : "show"
    ":id/edit"    : "edit"
    ".*"          : "index"

index: ->
    @view = new Blog.Views.ActivitiesIndexView({collection: @activities})

newPost: ->
    @view = new Blog.Views.ActivitiesNewView({collection: @activities})

show: (id) ->
    activity = @activities.get(id)
    @view = new Blog.Views.ActivitiesShowView({model: activity})

edit: (id) ->
    activity = @activities.get(id)
    @view = new Blog.Views.ActivitiesEditView({model: activity})