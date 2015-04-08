`import Ember from 'ember'`

Route = Ember.Route.extend
  model: ->
    return this.store.createRecord('friend')

`export default Route`
