class Blog.Views.ActivitiesNewView extends Backbone.View

el: '#activities'

template: JST["backbone/templates/activities/new"]

events:
   "submit #new-activity": "save"

initialize: ->
   @render()

render: ->
   @$el.html @template()

save: (e) ->
   e.preventDefault()
   e.stopPropagation()
   code = $('#code').val()
   description = $('#description').val()
   model = new Blog.Models.Activity({code: code, description: description})
   @collection.create model,
        success: (activity) =>
        @model = activity
        window.location.hash = "/#{@model.id}"