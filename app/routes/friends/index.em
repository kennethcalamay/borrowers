`import Ember from 'ember'`

Route = Ember.Route.extend
  model: ->
    return this.store.findAll('friend')

`export default Route`
