`import DS from 'ember-data'`
`import Ember from 'ember'`

Friend = DS.Model.extend
  articles:          DS.hasMany 'article'
  firstName:         DS.attr 'string'
  lastName:          DS.attr 'string'
  email:             DS.attr 'string'
  twitter:           DS.attr 'string'
  totalArticles:     DS.attr 'number'
  
  +computed firstName, lastName
  fullName: ->
    "#{@firstName} #{@lastName}"

`export default Friend`
