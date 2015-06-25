class Blog.Views.ActivitiesIndexView extends Backbone.View

    el:'#activities'

    template: JST["backbone/templates/activities/index"]

	initialize: ->
	           @render()
	           @addAll()

	addAll: ->
	           @collection.forEach(@addOne, @)
			

	addOne: (model) ->
	           @view = new Blog.Views.ActivityView({model: model})
	           @$el.find('tbody').append @view.render().el

	render: ->
	           @$el.html @template()
	           @