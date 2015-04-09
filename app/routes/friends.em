`import Ember from 'ember'`

Route = Ember.Route.extend
  actions:
    save: ->
      console.log 'save action bubbled to friends route'
    cancel: ->
      console.log 'cancel action bubbled to friends route'
    delete: (friend)->
      that = this
      friend.destroyRecord().then ->
        that.transitionTo 'friends.index'
      


`export default Route`
