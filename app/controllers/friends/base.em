`import Ember from 'ember'`

FriendsBaseController = Ember.Controller.extend
  isValid: ~>
    return !Ember.isEmpty(@model.email) && !Ember.isEmpty(@model.firstName) && !Ember.isEmpty(@model.lastName) && !Ember.isEmpty(@model.twitter)

  actions:
    save: ->
      if @isValid
        that = this
        @model.save().then (friend)->
          that.transitionToRoute('friends.show', friend)
      else
        @errorMessage = "You have to fill all the fields"
      return false
    cancel: ->
      return true

`export default FriendsBaseController`
