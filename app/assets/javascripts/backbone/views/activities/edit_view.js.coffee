class Blog.Views.ActivitiesEditView extends Backbone.View

template: JST["backbone/templates/activities/edit"]

el: '#activities'

events:
    "submit #edit-activity" : "update"

initialize: ->
    @render()

render: ->
    @$el.html @template(@model.toJSON())
    @

update: (e) ->
    e.preventDefault()
    e.stopPropagation()
    code = $('#code').val()
    description = $('#description').val()
    @model.save({code: code, description: description},
                success: (post) =>
                @model = post
                window.location.hash = "/#{@model.id}")