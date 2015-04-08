`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  this.resource 'friends', ->
    this.route('new')

`export default Router`
