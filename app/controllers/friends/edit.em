`import Ember from 'ember'`

FriendsEditController = Ember.Controller.extend
  +computed model.email, model.firstName, model.lastName, model.twitter
  isValid: ->
    !Ember.isEmpty(@model.email) && !Ember.isEmpty(@model.firstName) && !Ember.isEmpty(@model.lastName) && !Ember.isEmpty(@model.twitter)

  actions:
    save: ->
      if @isValid
        that = this
        @model.save().then (friend)->
          that.transitionToRoute('friends.show', friend)
      else
        @errorMessage = "You have to fill all the fields"
      false

    cancel: ->

      @transitionToRoute('friends.show', @model)
      false

`export default FriendsEditController`
