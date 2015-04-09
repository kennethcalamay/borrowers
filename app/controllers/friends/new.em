`import FriendsBaseController from './base'`

FriendsNewController = FriendsBaseController.extend
  actions:
    cancel: ->
      @transitionToRoute('friends')
      return false

`export default FriendsNewController`
