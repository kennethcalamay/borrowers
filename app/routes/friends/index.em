`import Ember from 'ember'`

Route = Ember.Route.extend
  model: ->
    return this.store.findAll('friend')
  actions:
    delete: (friend)->
      friend.destroyRecord()
      false


`export default Route`
