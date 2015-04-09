`import Ember from 'ember'`

FriendsShowRoute = Ember.Route.extend
  actions:
    delete: (friend)->
      that = this
      friend.destroyRecord().then ->
        that.transitionTo('friends.index')
      return false

`export default FriendsShowRoute`
