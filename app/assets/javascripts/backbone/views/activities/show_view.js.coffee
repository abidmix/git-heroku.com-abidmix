class Blog.Views.ActivitiesShowView extends Backbone.View

template: JST["backbone/templates/activities/show"]

el: '#activities'

initialize: ->
    @render()

render: ->
    @$el.html(@template(@model.toJSON()))
    @