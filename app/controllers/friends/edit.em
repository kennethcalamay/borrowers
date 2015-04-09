`import FriendsBaseController from './base'`

FriendsEditController = FriendsBaseController.extend
  actions:
    cancel: ->
      @transitionToRoute('friends.show', @model)
      false

`export default FriendsEditController`
