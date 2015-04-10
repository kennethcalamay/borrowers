`import Ember from 'ember'`

ArticlesNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'article',
      friend: @modelFor('friends/show')
  actions:
    save: ->
      that = this
      model = @modelFor('articles/new')
      model.save().then ->
        that.transitionTo 'articles'
      false
    cancel: ->
      @transitionTo 'articles'


`export default ArticlesNewRoute`
