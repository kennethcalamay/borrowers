`import { test, moduleFor } from 'ember-qunit'`

# (ember)

moduleFor 'controller:friends/base', 'FriendsBaseController', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

# Replace this with your real tests.
test 'it exists', ->
  controller = @subject()
  ok controller

