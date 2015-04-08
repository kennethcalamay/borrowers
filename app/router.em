`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  this.resource 'friends', ->
    this.route('new')
    this.route('show', {path: ':friend_id'})

`export default Router`
